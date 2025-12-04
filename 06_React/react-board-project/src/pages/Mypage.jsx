import { useState } from 'react';
<<<<<<< HEAD
import { useAuth } from '../context/AuthContext';
import { useItems } from '../context/ItemContext';
import {Button, ButtonGroup, Container, DeleteButton, EmptyState, Form, FormGroup, Input, ItemActions, ItemCard, ItemImage, ItemInfo, ItemList, ItemPrice, ItemTitle, Label, Section, SectionTitle, StyledLink, Success, Title} from '../styles/Mypage.styled';
=======
import { Link } from 'react-router-dom';
import styled from 'styled-components';
import { useAuth } from '../context/AuthContext';
import { useItems } from '../context/ItemContext';

const Container = styled.div`
  max-width: 1000px;
  margin: 0 auto;
`;

const Title = styled.h1`
  margin-bottom: 2rem;
  color: #333;
`;

const Section = styled.section`
  background: white;
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  margin-bottom: 2rem;
`;

const SectionTitle = styled.h2`
  margin-bottom: 1.5rem;
  color: #333;
`;

const Form = styled.form`
  display: flex;
  flex-direction: column;
  gap: 1rem;
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
  
  &:disabled {
    background-color: #f5f5f5;
    cursor: not-allowed;
  }
`;

const ButtonGroup = styled.div`
  display: flex;
  gap: 1rem;
  justify-content: flex-end;
`;

const Button = styled.button`
  padding: 0.75rem 1.5rem;
  border: none;
  border-radius: 5px;
  cursor: pointer;
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

const Success = styled.div`
  color: #28a745;
  font-size: 0.9rem;
  margin-top: 0.5rem;
`;

const ItemList = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
`;

const ItemCard = styled.div`
  display: flex;
  gap: 1rem;
  padding: 1rem;
  border: 1px solid #eee;
  border-radius: 5px;
  transition: background-color 0.2s;
  
  &:hover {
    background-color: #f8f9fa;
  }
`;

const ItemImage = styled.div`
  width: 100px;
  height: 100px;
  background-color: #f0f0f0;
  background-image: url(${props => props.src});
  background-size: cover;
  background-position: center;
  border-radius: 5px;
  flex-shrink: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #999;
  font-size: 0.8rem;
`;

const ItemInfo = styled.div`
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
`;

const ItemTitle = styled.h3`
  font-size: 1.1rem;
  margin-bottom: 0.5rem;
  color: #333;
`;

const ItemPrice = styled.p`
  font-size: 1.2rem;
  font-weight: bold;
  color: #007bff;
`;

const ItemActions = styled.div`
  display: flex;
  gap: 0.5rem;
  align-items: center;
`;

const StyledLink = styled(Link)`
  padding: 0.5rem 1rem;
  background-color: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-size: 0.9rem;
  
  &:hover {
    opacity: 0.9;
  }
`;

const DeleteButton = styled.button`
  padding: 0.5rem 1rem;
  background-color: #dc3545;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 0.9rem;
  
  &:hover {
    opacity: 0.9;
  }
`;

const EmptyState = styled.div`
  text-align: center;
  padding: 2rem;
  color: #666;
`;
>>>>>>> bf3e40625717d4637ade24d7ee4eb45d2c4234ed

const MyPage = () => {
  const { user, updateUser } = useAuth();
  const { items, deleteItem } = useItems();
  const [isEditing, setIsEditing] = useState(false);
  const [formData, setFormData] = useState({
    name: user?.name || '',
    phone: user?.phone || '',
    password: '',
    confirmPassword: ''
  });
  const [errors, setErrors] = useState({});
  const [successMessage, setSuccessMessage] = useState('');

  const myItems = items.filter(item => item.authorId === user?.id);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
    setErrors(prev => ({
      ...prev,
      [name]: ''
    }));
    setSuccessMessage('');
  };

  const validateForm = () => {
    const newErrors = {};

    if (!formData.name.trim()) {
      newErrors.name = '이름을 입력해주세요.';
    }

    if (!formData.phone.trim()) {
      newErrors.phone = '전화번호를 입력해주세요.';
    } else if (!/^\d{3}-\d{3,4}-\d{4}$/.test(formData.phone)) {
      newErrors.phone = '올바른 전화번호 형식이 아닙니다.';
    }

    if (formData.password) {
      if (formData.password.length < 6) {
        newErrors.password = '비밀번호는 최소 6자 이상이어야 합니다.';
      }
      if (formData.password !== formData.confirmPassword) {
        newErrors.confirmPassword = '비밀번호가 일치하지 않습니다.';
      }
    }

    return newErrors;
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    
    const validationErrors = validateForm();
    if (Object.keys(validationErrors).length > 0) {
      setErrors(validationErrors);
      return;
    }

    const updatedData = {
      ...user,
      name: formData.name,
      phone: formData.phone
    };

    if (formData.password) {
      updatedData.password = formData.password;
    }

    updateUser(updatedData);
    setIsEditing(false);
    setSuccessMessage('정보가 성공적으로 수정되었습니다.');
    setFormData(prev => ({
      ...prev,
      password: '',
      confirmPassword: ''
    }));
  };

  const handleDelete = (itemId) => {
    if (window.confirm('정말 삭제하시겠습니까?')) {
      deleteItem(itemId);
    }
  };

  const handleCancel = () => {
    setIsEditing(false);
    setFormData({
      name: user?.name || '',
      phone: user?.phone || '',
      password: '',
      confirmPassword: ''
    });
    setErrors({});
    setSuccessMessage('');
  };

  return (
    <Container>
      <Title>마이페이지</Title>

      <Section>
        <SectionTitle>내 정보</SectionTitle>
        <Form onSubmit={handleSubmit}>
          <FormGroup>
            <Label htmlFor="email">이메일</Label>
            <Input
              type="email"
              id="email"
              value={user?.email || ''}
              disabled
            />
          </FormGroup>

          <FormGroup>
            <Label htmlFor="name">이름</Label>
            <Input
              type="text"
              id="name"
              name="name"
              value={formData.name}
              onChange={handleChange}
              disabled={!isEditing}
            />
            {errors.name && <e>{errors.name}</e>}
          </FormGroup>

          <FormGroup>
            <Label htmlFor="phone">전화번호</Label>
            <Input
              type="tel"
              id="phone"
              name="phone"
              value={formData.phone}
              onChange={handleChange}
              disabled={!isEditing}
              placeholder="010-1234-5678"
            />
            {errors.phone && <e>{errors.phone}</e>}
          </FormGroup>

          {isEditing && (
            <>
              <FormGroup>
                <Label htmlFor="password">새 비밀번호 (선택사항)</Label>
                <Input
                  type="password"
                  id="password"
                  name="password"
                  value={formData.password}
                  onChange={handleChange}
                  placeholder="변경하지 않으려면 비워두세요"
                />
                {errors.password && <e>{errors.password}</e>}
              </FormGroup>

              <FormGroup>
                <Label htmlFor="confirmPassword">비밀번호 확인</Label>
                <Input
                  type="password"
                  id="confirmPassword"
                  name="confirmPassword"
                  value={formData.confirmPassword}
                  onChange={handleChange}
                  placeholder="새 비밀번호를 다시 입력하세요"
                />
                {errors.confirmPassword && <e>{errors.confirmPassword}</e>}
              </FormGroup>
            </>
          )}

          {successMessage && <Success>{successMessage}</Success>}

          <ButtonGroup>
            {isEditing ? (
              <>
                <Button type="button" variant="secondary" onClick={handleCancel}>
                  취소
                </Button>
                <Button type="submit">저장</Button>
              </>
            ) : (
              <Button type="button" onClick={() => setIsEditing(true)}>
                수정
              </Button>
            )}
          </ButtonGroup>
        </Form>
      </Section>

      <Section>
        <SectionTitle>내가 등록한 물품 ({myItems.length})</SectionTitle>
        {myItems.length === 0 ? (
          <EmptyState>등록한 물품이 없습니다.</EmptyState>
        ) : (
          <ItemList>
            {myItems.map(item => (
              <ItemCard key={item.id}>
<<<<<<< HEAD
                <ItemImage src={user.profileImage || undefined}>
=======
                <ItemImage src={item.image}>
>>>>>>> bf3e40625717d4637ade24d7ee4eb45d2c4234ed
                  {!item.image && '이미지 없음'}
                </ItemImage>
                <ItemInfo>
                  <div>
                    <ItemTitle>{item.title}</ItemTitle>
                    <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
                  </div>
                  <ItemActions>
                    <StyledLink to={`/items/${item.id}`}>상세보기</StyledLink>
                    <StyledLink to={`/items/edit/${item.id}`}>수정</StyledLink>
                    <DeleteButton onClick={() => handleDelete(item.id)}>
                      삭제
                    </DeleteButton>
                  </ItemActions>
                </ItemInfo>
              </ItemCard>
            ))}
          </ItemList>
        )}
      </Section>
    </Container>
  );
};

export default MyPage;