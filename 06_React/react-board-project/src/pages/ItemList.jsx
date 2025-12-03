import { useState, useMemo } from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';
import { useItems } from '../context/ItemContext';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
`;

const Header = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 2rem;
`;

const Title = styled.h1`
  color: #333;
`;

const Controls = styled.div`
  display: flex;
  gap: 1rem;
  align-items: center;
`;

const SearchInput = styled.input`
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  width: 300px;
  
  &:focus {
    outline: none;
    border-color: #007bff;
  }
`;

const Select = styled.select`
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

const ItemGrid = styled.div`
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 2rem;
`;

const ItemCard = styled(Link)`
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

const ItemImage = styled.div`
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

const ItemInfo = styled.div`
  padding: 1rem;
`;

const ItemTitle = styled.h3`
  font-size: 1.1rem;
  margin-bottom: 0.5rem;
  color: #333;
`;

const ItemPrice = styled.p`
  font-size: 1.3rem;
  font-weight: bold;
  color: #007bff;
  margin-bottom: 0.5rem;
`;

const ItemMeta = styled.div`
  display: flex;
  justify-content: space-between;
  font-size: 0.9rem;
  color: #666;
`;

const EmptyState = styled.div`
  text-align: center;
  padding: 4rem;
  color: #666;
  
  h2 {
    margin-bottom: 1rem;
  }
`;

const ItemListPage = () => {
  const { items } = useItems();
  const [searchTerm, setSearchTerm] = useState('');
  const [sortBy, setSortBy] = useState('latest');

  const filteredAndSortedItems = useMemo(() => {
    let result = [...items];

    // 검색 필터
    if (searchTerm) {
      result = result.filter(item =>
        item.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
        item.description.toLowerCase().includes(searchTerm.toLowerCase())
      );
    }

    // 정렬
    switch (sortBy) {
      case 'latest':
        result.sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));
        break;
      case 'oldest':
        result.sort((a, b) => new Date(a.createdAt) - new Date(b.createdAt));
        break;
      case 'price-low':
        result.sort((a, b) => a.price - b.price);
        break;
      case 'price-high':
        result.sort((a, b) => b.price - a.price);
        break;
      default:
        break;
    }

    return result;
  }, [items, searchTerm, sortBy]);

  return (
    <Container>
      <Header>
        <Title>물품 목록</Title>
        <Controls>
          <SearchInput
            type="text"
            placeholder="물품 검색..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
          <Select value={sortBy} onChange={(e) => setSortBy(e.target.value)}>
            <option value="latest">최신순</option>
            <option value="oldest">오래된순</option>
            <option value="price-low">낮은 가격순</option>
            <option value="price-high">높은 가격순</option>
          </Select>
        </Controls>
      </Header>

      {filteredAndSortedItems.length === 0 ? (
        <EmptyState>
          <h2>등록된 물품이 없습니다</h2>
          <p>첫 번째 물품을 등록해보세요!</p>
        </EmptyState>
      ) : (
        <ItemGrid>
          {filteredAndSortedItems.map(item => (
            <ItemCard key={item.id} to={`/items/${item.id}`}>
              <ItemImage src={item.image}>
                {!item.image && '이미지 없음'}
              </ItemImage>
              <ItemInfo>
                <ItemTitle>{item.title}</ItemTitle>
                <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
                <ItemMeta>
                  <span>{item.author}</span>
                  <span>{new Date(item.createdAt).toLocaleDateString()}</span>
                </ItemMeta>
              </ItemInfo>
            </ItemCard>
          ))}
        </ItemGrid>
      )}
    </Container>
  );
};

export default ItemListPage;