import { Link } from 'react-router-dom';
import styled from 'styled-components';

export const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
`;

export const Header = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 2rem;
`;

export const Title = styled.h1`
  color: #333;
`;

export const Controls = styled.div`
  display: flex;
  gap: 1rem;
  align-items: center;
`;

export const SearchInput = styled.input`
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  width: 300px;
  
  &:focus {
    outline: none;
    border-color: #007bff;
  }
`;

export const Select = styled.select`
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  background-color: white;
  cursor: pointer;
  
  &:focus {
    outline: none;
    border-color: #007bff;
  }
`;

export const ItemGrid = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 2rem;
`;

export const ItemCard = styled(Link)`
  background: white;
  border-radius: 10px;
  overflow: hidden;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  text-decoration: none;
  color: inherit;
  transition: transform 0.2s, box-shadow 0.2s;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 16px rgba(0,0,0,0.15);
  }
`;

export const ItemImage = styled.div`
  width: 100%;
  height: 200px;
  background-color: #f0f0f0;
  background-image: url(${props => props.src});
  background-size: cover;
  background-position: center;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #999;
`;

export const ItemInfo = styled.div`
  padding: 1rem;
`;

export const ItemTitle = styled.h3`
  font-size: 1.1rem;
  margin-bottom: 0.5rem;
  color: #333;
`;

export const ItemPrice = styled.p`
  font-size: 1.3rem;
  font-weight: bold;
  color: #007bff;
  margin-bottom: 0.5rem;
`;

export const ItemMeta = styled.div`
  display: flex;
  justify-content: space-between;
  font-size: 0.9rem;
  color: #666;
`;

export const EmptyState = styled.div`
  text-align: center;
  padding: 4rem;
  color: #666;
  
  h2 {
    margin-bottom: 1rem;
  }
`;