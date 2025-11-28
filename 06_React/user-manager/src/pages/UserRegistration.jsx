import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom';
import styled from 'styled-components';

const FormContainer = styled.form`
  max-width: 400px;
  margin: 50px auto;
  padding: 30px;
  border: 1px solid #ddd;
  border-radius: 8px;
`

const StyledLabel = styled.label`
  display: block;
  margin-bottom: 15px;
  font-weight: bold;
  color: #333;
`

const StyledInput = styled.input`
  width: 100%;
  padding: 8px;
  margin-top: 5px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
`

const UserRegistration = ({ addUser }) => {
  const [name, setName] = useState('');
  const [age, setAge] = useState('');
  const [isOnline, setIsOnline] = useState(false);

  const navigate = useNavigate();

  const handleSubmit = (e) => {
    e.preventDefault();

    // 유효성 검사
    if (!name.trim()) {
      alert('이름을 입력해주세요.');
      return;
    }
    if (!age.trim()) {
      alert('나이를 입력해주세요');
      return;
    }
    if (isNaN(age) || Number(age) <= 0) {
      alert('나이는 올바르게 숫자로 입력해주세요.');
      return;
    }

    const newUser = {
      name,
      age: Number(age),
      isOnline
    };

    addUser(newUser);
    navigate('/');
  }

  return (
    <div style={{ padding: '20px' }}>
      <h2 style={{ textAlign: 'center' }}>유저 등록</h2>
      <FormContainer onSubmit={handleSubmit}>
        <StyledLabel>
          이름 : <StyledInput type='text' value={name} onChange={(e) => setName(e.target.value)} placeholder="이름을 입력하세요" />
        </StyledLabel>
        
        <StyledLabel>
          나이 : <StyledInput type='number' value={age} onChange={(e) => setAge(e.target.value)} placeholder="나이를 입력하세요" />
        </StyledLabel>
        
        <StyledLabel>
          온라인 여부 : <input type='checkbox' checked={isOnline} onChange={(e) => setIsOnline(e.target.checked)} />
        </StyledLabel>
        
        <div>
            <button type='button' onClick={() => navigate('/')}>취소</button>
            <button type='submit'>등록</button>
        </div>
      </FormContainer>
    </div>
  )
}

export default UserRegistration;