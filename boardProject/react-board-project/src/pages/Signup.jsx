import { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import useAuthStore from '../store/authStore';
import { Button, Container, Error, Form, FormGroup, Input, Label, LoginLink, Title } from '../styles/Signup.styled';

const SignupPage = () => {
  const [formData, setFormData] = useState({
    email: '',
    password: '',
    confirmPassword: '',
    name: '',
    phone: '',
    address: '',       // 추가됨: 기본 주소
    detailAddress: ''  // 추가됨: 상세 주소 (동, 호수 등)
  });
  const [errors, setErrors] = useState({});
  
  const signup = useAuthStore((state) => state.signup);
  const navigate = useNavigate();

  const validateForm = () => {
    const newErrors = {};
    if (!formData.email) newErrors.email = '이메일을 입력해주세요.';
    else if (!/\S+@\S+\.\S+/.test(formData.email)) newErrors.email = '올바른 이메일 형식이 아닙니다.';
    
    if (!formData.password) newErrors.password = '비밀번호를 입력해주세요.';
    else if (formData.password.length < 6) newErrors.password = '비밀번호는 최소 6자 이상이어야 합니다.';
    if (formData.password !== formData.confirmPassword) newErrors.confirmPassword = '비밀번호가 일치하지 않습니다.';
    
    if (!formData.name) newErrors.name = '이름(닉네임)을 입력해주세요.';
    if (!formData.phone) newErrors.phone = '전화번호를 입력해주세요.';
    
    // 추가됨: 주소 유효성 검사
    if (!formData.address) newErrors.address = '주소를 입력해주세요.'; 

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

    try {
      // confirmPassword는 백엔드로 보낼 필요가 없으므로 제외
      const { confirmPassword, ...userData } = formData;
      
      // userData에는 이제 email, password, name, phone, address, detailAddress가 모두 포함됩니다.
      console.log("서버로 전송하는 데이터:", userData); // 디버깅용 로그
      
      await signup(userData); 
      alert("회원가입 성공! 로그인해주세요.");
      navigate('/login');
    } catch (err) {
      console.error(err);
      setErrors({ general: err.message || "회원가입 실패" });
    }
  };

  return (
    <Container>
      <Title>회원가입</Title>
      <Form onSubmit={handleSubmit}>
         {/* ... 기존 이메일, 비번 필드 생략 ... */}
         
         <FormGroup>
          <Label htmlFor="email">이메일 *</Label>
          <Input type="email" id="email" name="email" value={formData.email} onChange={handleChange} placeholder="example@email.com"/>
          {errors.email && <Error>{errors.email}</Error>}
        </FormGroup>

        <FormGroup>
          <Label htmlFor="password">비밀번호 *</Label>
          <Input type="password" id="password" name="password" value={formData.password} onChange={handleChange} placeholder="최소 6자 이상"/>
          {errors.password && <Error>{errors.password}</Error>}
        </FormGroup>

        <FormGroup>
          <Label htmlFor="confirmPassword">비밀번호 확인 *</Label>
          <Input type="password" id="confirmPassword" name="confirmPassword" value={formData.confirmPassword} onChange={handleChange} placeholder="비밀번호 재입력"/>
          {errors.confirmPassword && <Error>{errors.confirmPassword}</Error>}
        </FormGroup>

        <FormGroup>
          <Label htmlFor="name">닉네임 *</Label>
          <Input type="text" id="name" name="name" value={formData.name} onChange={handleChange} placeholder="홍길동"/>
          {errors.name && <Error>{errors.name}</Error>}
        </FormGroup>

        <FormGroup>
          <Label htmlFor="phone">전화번호 *</Label>
          <Input type="tel" id="phone" name="phone" value={formData.phone} onChange={handleChange} placeholder="010-1234-5678"/>
          {errors.phone && <Error>{errors.phone}</Error>}
        </FormGroup>

        <FormGroup>
          <Label htmlFor="address">주소 *</Label>
          <Input 
            type="text" 
            id="address" 
            name="address" 
            value={formData.address} 
            onChange={handleChange} 
            placeholder="서울특별시 강남구..."
          />
          {errors.address && <Error>{errors.address}</Error>}
        </FormGroup>

        <FormGroup>
          <Label htmlFor="detailAddress">상세 주소</Label>
          <Input 
            type="text" 
            id="detailAddress" 
            name="detailAddress" 
            value={formData.detailAddress} 
            onChange={handleChange} 
            placeholder="101동 101호"
          />
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