import { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
<<<<<<< HEAD
import { useAuth } from '../context/AuthContext';
import {Button, Container, Error, Form, FormGroup, Input, Label, LoginLink, Title} from '../styles/Signup.styled';

=======
import styled from 'styled-components';
import { useAuth } from '../context/AuthContext';

const Container = styled.div`
  max-width: 400px;
  margin: 4rem auto;
  padding: 2rem;
  background: white;
  border-radius: 10px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
`;

const Title = styled.h2`
  text-align: center;
  margin-bottom: 2rem;
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
`;

const Button = styled.button`
  padding: 0.75rem;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  margin-top: 1rem;
  
  &:hover {
    background-color: #0056b3;
  }
  
  &:disabled {
    background-color: #ccc;
    cursor: not-allowed;
  }
`;

const Error = styled.div`
  color: #dc3545;
  font-size: 0.9rem;
  margin-top: 0.5rem;
`;

const LoginLink = styled.div`
  text-align: center;
  margin-top: 1rem;
  color: #666;
  
  a {
    color: #007bff;
    text-decoration: none;
    font-weight: 600;
    
    &:hover {
      text-decoration: underline;
    }
  }
`;
>>>>>>> bf3e40625717d4637ade24d7ee4eb45d2c4234ed

const SignupPage = () => {
  const [formData, setFormData] = useState({
    email: '',
    password: '',
    confirmPassword: '',
    name: '',
    phone: ''
  });
  const [errors, setErrors] = useState({});
  const { signup } = useAuth();
  const navigate = useNavigate();

  const validateForm = () => {
    const newErrors = {};

    if (!formData.email) {
      newErrors.email = '이메일을 입력해주세요.';
    } else if (!/\S+@\S+\.\S+/.test(formData.email)) {
      newErrors.email = '올바른 이메일 형식이 아닙니다.';
    }

    if (!formData.password) {
      newErrors.password = '비밀번호를 입력해주세요.';
    } else if (formData.password.length < 6) {
      newErrors.password = '비밀번호는 최소 6자 이상이어야 합니다.';
    }

    if (formData.password !== formData.confirmPassword) {
      newErrors.confirmPassword = '비밀번호가 일치하지 않습니다.';
    }

    if (!formData.name) {
      newErrors.name = '이름을 입력해주세요.';
    }

    if (!formData.phone) {
      newErrors.phone = '전화번호를 입력해주세요.';
    } else if (!/^\d{3}-\d{3,4}-\d{4}$/.test(formData.phone)) {
      newErrors.phone = '올바른 전화번호 형식이 아닙니다. (예: 010-1234-5678)';
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

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    const validationErrors = validateForm();
    if (Object.keys(validationErrors).length > 0) {
      setErrors(validationErrors);
      return;
    }

    try {
      const { confirmPassword, ...userData } = formData;
      await signup(userData);
      navigate('/');
    } catch (err) {
      setErrors({ general: err.message });
    }
  };

  return (
    <Container>
      <Title>회원가입</Title>
      <Form onSubmit={handleSubmit}>
        <FormGroup>
          <Label htmlFor="email">이메일 *</Label>
          <Input
            type="email"
            id="email"
            name="email"
            value={formData.email}
            onChange={handleChange}
            placeholder="example@email.com"
          />
          {errors.email && <Error>{errors.email}</Error>}
        </FormGroup>
        
        <FormGroup>
          <Label htmlFor="password">비밀번호 *</Label>
          <Input
            type="password"
            id="password"
            name="password"
            value={formData.password}
            onChange={handleChange}
            placeholder="최소 6자 이상"
          />
          {errors.password && <Error>{errors.password}</Error>}
        </FormGroup>
        
        <FormGroup>
          <Label htmlFor="confirmPassword">비밀번호 확인 *</Label>
          <Input
            type="password"
            id="confirmPassword"
            name="confirmPassword"
            value={formData.confirmPassword}
            onChange={handleChange}
            placeholder="비밀번호를 다시 입력하세요"
          />
          {errors.confirmPassword && <Error>{errors.confirmPassword}</Error>}
        </FormGroup>
        
        <FormGroup>
          <Label htmlFor="name">이름 *</Label>
          <Input
            type="text"
            id="name"
            name="name"
            value={formData.name}
            onChange={handleChange}
            placeholder="홍길동"
          />
          {errors.name && <Error>{errors.name}</Error>}
        </FormGroup>
        
        <FormGroup>
          <Label htmlFor="phone">전화번호 *</Label>
          <Input
            type="tel"
            id="phone"
            name="phone"
            value={formData.phone}
            onChange={handleChange}
            placeholder="010-1234-5678"
          />
          {errors.phone && <Error>{errors.phone}</Error>}
        </FormGroup>
        
        {errors.general && <Error>{errors.general}</Error>}
        
        <Button type="submit">가입하기</Button>
      </Form>
      
      <LoginLink>
        이미 계정이 있으신가요? <Link to="/login">로그인</Link>
      </LoginLink>
    </Container>
  );
};

export default SignupPage;