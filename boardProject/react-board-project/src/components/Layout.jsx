import { Outlet, useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { Button, Header, LayoutContainer, Logo, Main, Nav, NavLink, NavLinks, UserInfo } from '../styles/Layout.styled';

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
                <Button onClick={handleLogout} $variant="secondary">로그아웃</Button>
              </>
            ) : (
              <>
                <NavLink to="/login">로그인</NavLink>
                <Button onClick={() => navigate('/signup')} $variant="primary">회원가입</Button>
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