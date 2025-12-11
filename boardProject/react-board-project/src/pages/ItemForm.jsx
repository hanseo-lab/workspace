import { useState, useEffect } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import { useItems } from '../context/ItemContext';
import { useAuth } from '../context/AuthContext';
import { BackButton, Button, ButtonGroup, Container, Form, FormContainer, FormGroup, ImagePreview, Input, Label, Textarea, Title } from '../styles/ItemForm.styled';

const ItemFormPage = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const { getItemById, addItem, updateItem } = useItems();
  const { user } = useAuth();
  const isEditMode = !!id;

  const [formData, setFormData] = useState({
    title: '',
    price: '',
    description: '',
    image: ''
  });
  const [errors, setErrors] = useState({});

  useEffect(() => {
    if (isEditMode) {
      const item = getItemById(id);
      if (item) {
        if (item.authorId !== user.id) {
          alert('수정 권한이 없습니다.');
          navigate('/items');
          return;
        }
        setFormData({
          title: item.title,
          price: item.price,
          description: item.description,
          image: item.image || ''
        });
      } else {
        navigate('/404');
      }
    }
  }, [id, isEditMode, getItemById, user, navigate]);

  const validateForm = () => {
    const newErrors = {};

    if (!formData.title.trim()) {
      newErrors.title = '제목을 입력해주세요.';
    }

    if (!formData.price) {
      newErrors.price = '가격을 입력해주세요.';
    } else if (isNaN(formData.price) || Number(formData.price) < 0) {
      newErrors.price = '올바른 가격을 입력해주세요.';
    }

    if (!formData.description.trim()) {
      newErrors.description = '설명을 입력해주세요.';
    }

    return newErrors;
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
    
    if (errors[name]) {
      setErrors(prev => ({
        ...prev,
        [name]: ''
      }));
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    
    const validationErrors = validateForm();
    if (Object.keys(validationErrors).length > 0) {
      setErrors(validationErrors);
      return;
    }

    const itemData = {
      ...formData,
      price: Number(formData.price),
      author: user.name,
      authorId: user.id
    };

    if (isEditMode) {
      updateItem(id, itemData);
      navigate(`/items/${id}`);
    } else {
      const newItem = addItem(itemData);
      navigate(`/items/${newItem.id}`);
    }
  };

  return (
    <Container>
      <BackButton to={isEditMode ? `/items/${id}` : '/items'}>
        ← 뒤로가기
      </BackButton>
      
      <FormContainer>
        <Title>{isEditMode ? '물품 수정' : '물품 등록'}</Title>
        
        <Form onSubmit={handleSubmit}>
          <FormGroup>
            <Label htmlFor="title">제목 *</Label>
            <Input
              type="text"
              id="title"
              name="title"
              value={formData.title}
              onChange={handleChange}
              placeholder="물품 제목을 입력하세요"
            />
            {errors.title && <e>{errors.title}</e>}
          </FormGroup>

          <FormGroup>
            <Label htmlFor="price">가격 (원) *</Label>
            <Input
              type="number"
              id="price"
              name="price"
              value={formData.price}
              onChange={handleChange}
              placeholder="0"
              min="0"
            />
            {errors.price && <e>{errors.price}</e>}
          </FormGroup>

          <FormGroup>
            <Label htmlFor="description">설명 *</Label>
            <Textarea
              id="description"
              name="description"
              value={formData.description}
              onChange={handleChange}
              placeholder="물품에 대한 상세 설명을 입력하세요"
            />
            {errors.description && <e>{errors.description}</e>}
          </FormGroup>

          <FormGroup>
            <Label htmlFor="image">이미지 URL</Label>
            <Input
              type="url"
              id="image"
              name="image"
              value={formData.image}
              onChange={handleChange}
              placeholder="https://example.com/image.jpg"
            />
            {formData.image && (
              <ImagePreview src={formData.image}>
                {!formData.image && '이미지 미리보기'}
              </ImagePreview>
            )}
          </FormGroup>

          <ButtonGroup>
            <Button
              type="button" 
              $variant="secondary"
              onClick={() => navigate(isEditMode ? `/items/${id}` : '/items')}
            >
              취소
            </Button>
            <Button type="submit">
              {isEditMode ? '수정하기' : '등록하기'}
            </Button>
          </ButtonGroup>
        </Form>
      </FormContainer>
    </Container>
  );
};

export default ItemFormPage;