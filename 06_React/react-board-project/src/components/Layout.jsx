import { Outlet, Link, useNavigate } from 'react-router-dom';
import styled from 'styled-components';
import { useAuth } from '../context/AuthContext';

const LayoutContainer = styled.div`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
`;

const Header = styled.header`
  background-color: #fff;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  padding: 1rem 2rem;
`;

const Nav = styled.nav`
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
`;

const Logo = styled(Link)`
  font-size: 1.5rem;
  font-weight: bold;
  color: #333;
  text-decoration: none;
  
  &:hover {
    color: #007bff;
  }
`;

const NavLinks = styled.div`
  display: flex;
  gap: 2rem;
  align-items: center;
`;

const NavLink = styled(Link)`
  color: #333;
  text-decoration: none;
  font-weight: 500;
  
  &:hover {
    color: #007bff;
  }
`;

const Button = styled.button`
  background-color: ${props => props.variant === 'primary' ? '#007bff' : '#6c757d'};
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  cursor: pointer;
  font-weight: 500;
  
  &:hover {
    opacity: 0.9;
  }
`;

const UserInfo = styled.span`
  color: #333;
  font-weight: 500;
`;

const Main = styled.main`
  flex: 1;
  max-width: 1200px;
  width: 100%;
  margin: 2rem auto;
  padding: 0 2rem;
`;

const Layout = () => {
  const { user, logout, isAuthenticated } = useAuth();
  const navigate = useNavigate();

  const handleLogout = () => {
    logout();
    navigate('/');
  };

  return (
    <LayoutContainer>
      <Header>
        <Nav>
          <Logo to="/">중고거래 마켓</Logo>
          <NavLinks>
            <NavLink to="/">홈</NavLink>
            <NavLink to="/items">물품 목록</NavLink>
            {isAuthenticated && <NavLink to="/items/new">물품 등록</NavLink>}
            
            {isAuthenticated ? (
              <>
                <UserInfo>{user?.name}님</UserInfo>
                <NavLink to="/mypage">마이페이지</NavLink>
                <Button onClick={handleLogout} variant="secondary">로그아웃</Button>
              </>
            ) : (
              <>
                <NavLink to="/login">로그인</NavLink>
                <Button onClick={() => navigate('/signup')} variant="primary">회원가입</Button>
              </>
            )}
          </NavLinks>
        </Nav>
      </Header>
      <Main>
        <Outlet />
      </Main>
    </LayoutContainer>
  );
};

export default Layout;