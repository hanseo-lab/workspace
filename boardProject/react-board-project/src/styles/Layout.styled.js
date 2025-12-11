import styled from 'styled-components';
import { Link } from 'react-router-dom';

export const LayoutContainer = styled.div`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
`;

export const Header = styled.header`
  background-color: #fff;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  padding: 1rem 2rem;
`;

export const Nav = styled.nav`
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
`;

export const Logo = styled(Link)`
  font-size: 1.5rem;
  font-weight: bold;
  color: #333;
  text-decoration: none;
  
  &:hover {
    color: #007bff;
  }
`;

export const NavLinks = styled.div`
  display: flex;
  gap: 2rem;
  align-items: center;
`;

export const NavLink = styled(Link)`
  color: #333;
  text-decoration: none;
  font-weight: 500;
  
  &:hover {
    color: #007bff;
  }
`;

export const Button = styled.button`
  background-color: ${props => props.$variant === 'primary' ? '#007bff' : '#6c757d'};
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

export const UserInfo = styled.span`
  color: #333;
  font-weight: 500;
`;

export const Main = styled.main`
  flex: 1;
  max-width: 1200px;
  width: 100%;
  margin: 2rem auto;
  padding: 0 2rem;
`;