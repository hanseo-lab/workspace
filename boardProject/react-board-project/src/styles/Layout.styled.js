import styled from 'styled-components';
import { Link } from 'react-router-dom';

export const LayoutContainer = styled.div`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
`;

export const Header = styled.header`
  background-color: var(--white);
  box-shadow: var(--shadow);
  position: sticky;
  top: 0;
  z-index: 100;
  padding: 0 1rem;
`;

export const Nav = styled.nav`
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1000px;
  margin: 0 auto;
  height: 70px;
`;

export const Logo = styled(Link)`
  font-size: 1.5rem;
  font-weight: 800;
  color: var(--primary);
  letter-spacing: -0.5px;
`;

export const NavLinks = styled.div`
  display: flex;
  align-items: center;
  gap: 1.5rem;
`;

export const NavLink = styled(Link)`
  color: var(--text-main);
  font-weight: 600;
  font-size: 0.95rem;
  transition: color 0.2s;
  
  &:hover {
    color: var(--primary);
  }
`;

export const UserInfo = styled.span`
  font-weight: 600;
  color: var(--text-sub);
  margin-right: 0.5rem;
`;

export const Button = styled.button`
  background-color: ${props => props.$variant === 'primary' ? 'var(--primary)' : '#e2e8f0'};
  color: ${props => props.$variant === 'primary' ? 'white' : 'var(--text-main)'};
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 8px;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.2s;
  
  &:hover {
    background-color: ${props => props.$variant === 'primary' ? 'var(--primary-hover)' : '#cbd5e1'};
    transform: translateY(-1px);
  }
`;

export const Main = styled.main`
  flex: 1;
  max-width: 1000px;
  width: 100%;
  margin: 2rem auto;
  padding: 0 1rem;
`;