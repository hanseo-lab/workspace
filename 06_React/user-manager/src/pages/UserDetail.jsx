import React from 'react'
import { useNavigate, useParams } from 'react-router-dom'
import styled from 'styled-components';

const Div = styled.div`
    text-align: center;
    margin-top: 50px;
`

const Container = styled.div`
    max-width: 500px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    text-align: center;
`

const Title = styled.h2`
    color: #333;
    margin-bottom: 20px;
`
const InfoText = styled.p`
    font-size: 18px;
    margin: 10px 0;
    color: #555;
`
const Status = styled.span`
    font-weight: bold;
    color: ${(props) => (props.$isOnline ? 'green' : 'red')};
`

const UserDetail = ({ users, deleteUser }) => {
  const { id } = useParams();
  const navigate = useNavigate();
  const user = users.find((u) => u.id === Number(id));

  const handleDelete = () => {
    if (window.confirm('정말 삭제하시겠습니까?')) {
      deleteUser(id);
      navigate('/');
    }
  };

  if (!user) {
    return (
      <Div>
        <div>존재하지 않는 유저입니다.</div>
        <button onClick={() => navigate('/')}>돌아가기</button>
      </Div>
    )
  }

  return (
    <Container>
      <Title>{user.name}님의 상세정보</Title>
      <InfoText>ID: {user.id}</InfoText>
      <InfoText>이름: {user.name}</InfoText>
      <InfoText>나이: {user.age}세</InfoText>
      <Status $isOnline={user.isOnline}>
        상태: {user.isOnline ? '온라인' : '오프라인'}
      </Status>
      <br /><br />
      <button onClick={() => navigate('/')}>목록으로</button>
      <button onClick={handleDelete}>삭제</button>
    </Container>
  )
}

export default UserDetail;