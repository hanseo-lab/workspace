import styled from 'styled-components';
import { Link } from 'react-router-dom';

export const Container = styled.div`
  width: 100%;
`;

export const Header = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 2rem;
`;

export const Title = styled.h2`
  font-size: 1.5rem;
  font-weight: 700;
`;

export const Controls = styled.div`
  display: flex;
  gap: 0.8rem;
`;

export const SearchInput = styled.input`
  padding: 0.6rem 1rem;
  border: 1px solid #e2e8f0;
  border-radius: 8px;
  width: 250px;
  outline: none;
  transition: border-color 0.2s;
  
  &:focus {
    border-color: var(--primary);
  }
`;

export const Select = styled.select`
  padding: 0.6rem 1rem;
  border: 1px solid #e2e8f0;
  border-radius: 8px;
  outline: none;
  cursor: pointer;
`;

export const ItemGrid = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
  gap: 1.5rem;
`;

export const ItemCard = styled(Link)`
  background: white;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 1px 3px rgba(0,0,0,0.1);
  transition: transform 0.2s, box-shadow 0.2s;
  display: flex;
  flex-direction: column;
  height: 100%;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1);
  }
`;

export const ItemImage = styled.div`
  width: 100%;
  padding-top: 75%; /* 4:3 비율 유지 */
  position: relative;
  background-color: #f1f5f9;
  
  /* 실제 이미지는 배경으로 처리하거나 내부 img 태그 사용 */
  background-image: url(${props => props.src});
  background-size: cover;
  background-position: center;
  
  display: flex;
  align-items: center;
  justify-content: center;
  color: #94a3b8;
  font-size: 0.9rem;
`;

export const ItemInfo = styled.div`
  padding: 1rem;
  display: flex;
  flex-direction: column;
  flex: 1;
`;

export const ItemTitle = styled.h3`
  font-size: 1rem;
  margin: 0 0 0.5rem 0;
  color: var(--text-main);
  line-height: 1.4;
  
  /* 2줄 이상 말줄임표 */
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
  overflow: hidden;
`;

export const ItemPrice = styled.p`
  font-size: 1.1rem;
  font-weight: 700;
  color: var(--text-main);
  margin: 0;
  margin-top: auto; /* 가격을 항상 아래로 */
`;

export const ItemMeta = styled.div`
  margin-top: 0.5rem;
  font-size: 0.8rem;
  color: #94a3b8;
  display: flex;
  justify-content: space-between;
`;

export const EmptyState = styled.div`
  text-align: center;
  padding: 5rem 0;
  color: var(--text-sub);
`;