import { Link } from 'react-router-dom';
import styled from 'styled-components';

const Container = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 60vh;
  text-align: center;
`;

const ErrorCode = styled.h1`
  font-size: 6rem;
  margin-bottom: 1rem;
  color: #007bff;
`;

const ErrorMessage = styled.h2`
  font-size: 2rem;
  margin-bottom: 1rem;
  color: #333;
`;

const ErrorDescription = styled.p`
  font-size: 1.2rem;
  color: #666;
  margin-bottom: 2rem;
`;

const HomeButton = styled(Link)`
  display: inline-block;
  padding: 1rem 2rem;
  background-color: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-weight: 600;
  transition: background-color 0.2s;
  
  &:hover {
    background-color: #0056b3;
  }
`;

const NotFoundPage = () => {
  return (
    <Container>
      <ErrorCode>404</ErrorCode>
      <ErrorMessage>페이지를 찾을 수 없습니다</ErrorMessage>
      <ErrorDescription>
        요청하신 페이지가 존재하지 않거나 이동되었습니다.
      </ErrorDescription>
      <HomeButton to="/">홈으로 돌아가기</HomeButton>
    </Container>
  );
};

export default NotFoundPage;