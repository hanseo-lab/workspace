import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import useItemStore from '../store/itemStore';
import useAuthStore from '../store/authStore';
import { BackButton, Button, ButtonGroup, Container, Form, FormContainer, FormGroup, ImagePreview, Input, Label, Textarea, Title } from '../styles/ItemForm.styled';

const ItemFormPage = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  
  const { getItemById, addItem, updateItem } = useItemStore();
  const user = useAuthStore((state) => state.user);
  
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
      const loadItem = async () => {
         const item = await getItemById(id);
         if (item) {
            if (item.seller !== user.name) { 
              alert('수정 권한이 없습니다.');
              navigate('/items');
              return;
            }
            setFormData({
              title: item.title,
              price: item.price,
              description: item.content || item.description, // content 필드명 대응
              image: item.imageUrl || ''
            });
         } else {
         }
      }
      loadItem();
    }
  }, [id, isEditMode, getItemById, user, navigate]);

  const validateForm = () => {
    const newErrors = {};
    if (!formData.title.trim()) newErrors.title = '제목을 입력해주세요.';
    if (!formData.price) newErrors.price = '가격을 입력해주세요.';
    else if (isNaN(formData.price) || Number(formData.price) < 0) newErrors.price = '올바른 가격을 입력해주세요.';
    if (!formData.description.trim()) newErrors.description = '설명을 입력해주세요.';
    return newErrors;
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
    if (errors[name]) setErrors(prev => ({ ...prev, [name]: '' }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const validationErrors = validateForm();
    if (Object.keys(validationErrors).length > 0) {
      setErrors(validationErrors);
      return;
    }

    const itemData = {
      ...formData,
      content: formData.description, 
      price: Number(formData.price),
      seller: user.name, 
    };

    if (isEditMode) {
      await updateItem(id, itemData);
      navigate(`/items/${id}`);
    } else {
      const newItem = await addItem(itemData);
      // newItem이 정상적으로 반환된다면 ID로 이동, 아니면 목록 이동
      if(newItem && newItem.id) navigate(`/items/${newItem.id}`);
      else navigate('/items');
    }
  };

  return (
    <Container>
      <BackButton to={isEditMode ? `/items/${id}` : '/items'}>← 뒤로가기</BackButton>
      <FormContainer>
        <Title>{isEditMode ? '물품 수정' : '물품 등록'}</Title>
        <Form onSubmit={handleSubmit}>
             <FormGroup>
                <Label htmlFor="title">제목 *</Label>
                <Input type="text" id="title" name="title" value={formData.title} onChange={handleChange} placeholder="물품 제목"/>
                {errors.title && <e>{errors.title}</e>}
             </FormGroup>
             <FormGroup>
                <Label htmlFor="price">가격 (원) *</Label>
                <Input type="number" id="price" name="price" value={formData.price} onChange={handleChange} placeholder="0" min="0"/>
                {errors.price && <e>{errors.price}</e>}
             </FormGroup>
             <FormGroup>
                <Label htmlFor="description">설명 *</Label>
                <Textarea id="description" name="description" value={formData.description} onChange={handleChange} placeholder="상세 설명"/>
                {errors.description && <e>{errors.description}</e>}
             </FormGroup>
             <FormGroup>
                <Label htmlFor="image">이미지 URL</Label>
                <Input type="url" id="image" name="image" value={formData.image} onChange={handleChange} placeholder="https://..."/>
                {formData.image && <ImagePreview src={formData.image} />}
             </FormGroup>
             <ButtonGroup>
                <Button type="button" $variant="secondary" onClick={() => navigate('/items')}>취소</Button>
                <Button type="submit">{isEditMode ? '수정하기' : '등록하기'}</Button>
             </ButtonGroup>
        </Form>
      </FormContainer>
    </Container>
  );
};

export default ItemFormPage;