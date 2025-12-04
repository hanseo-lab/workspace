import { useState, useEffect } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
<<<<<<< HEAD
import { useItems } from '../context/ItemContext';
import { useAuth } from '../context/AuthContext';
import { BackButton, Button, ButtonGroup, Container, Form, FormContainer, FormGroup, ImagePreview, Input, Label, Textarea, Title } from '../styles/ItemForm.styled';
=======
import styled from 'styled-components';
import { useItems } from '../context/ItemContext';
import { useAuth } from '../context/AuthContext';

const Container = styled.div`
  max-width: 800px;
  margin: 0 auto;
`;

const BackButton = styled(Link)`
  display: inline-block;
  color: #007bff;
  text-decoration: none;
  margin-bottom: 2rem;
  
  &:hover {
    text-decoration: underline;
  }
`;

const FormContainer = styled.div`
  background: white;
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
`;

const Title = styled.h1`
  margin-bottom: 2rem;
  color: #333;
`;

const Form = styled.form`
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
`;

const FormGroup = styled.div`
  display: flex;
  flex-direction: column;
`;

const Label = styled.label`
  margin-bottom: 0.5rem;
  color: #333;
  font-weight: 500;
`;

const Input = styled.input`
  padding: 0.75rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  font-size: 1rem;
  
  &:focus {
    outline: none;
    border-color: #007bff;
  }
`;

const Textarea = styled.textarea`
  padding: 0.75rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  font-size: 1rem;
  min-height: 200px;
  resize: vertical;
  font-family: inherit;
  
  &:focus {
    outline: none;
    border-color: #007bff;
  }
`;

const ImagePreview = styled.div`
  width: 100%;
  height: 300px;
  background-color: #f0f0f0;
  background-image: url(${props => props.src});
  background-size: cover;
  background-position: center;
  border-radius: 5px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #999;
  margin-top: 0.5rem;
`;

const ButtonGroup = styled.div`
  display: flex;
  gap: 1rem;
  justify-content: flex-end;
`;

const Button = styled.button`
  padding: 0.75rem 2rem;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 1rem;
  font-weight: 600;
  background-color: ${props => props.variant === 'secondary' ? '#6c757d' : '#007bff'};
  color: white;
  
  &:hover {
    opacity: 0.9;
  }
`;

const Error = styled.div`
  color: #dc3545;
  font-size: 0.9rem;
  margin-top: 0.5rem;
`;
>>>>>>> bf3e40625717d4637ade24d7ee4eb45d2c4234ed

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
<<<<<<< HEAD
            <Button
              type="button" 
              $variant="secondary"
=======
            <Button 
              type="button" 
              variant="secondary"
>>>>>>> bf3e40625717d4637ade24d7ee4eb45d2c4234ed
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