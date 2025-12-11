import { useState, useMemo } from 'react';
import { useItems } from '../context/ItemContext';
import{Container, Controls, EmptyState, Header, ItemCard, ItemGrid, ItemImage, ItemInfo, ItemMeta, ItemPrice, ItemTitle, SearchInput, Select, Title} from'../styles/ItemList.styled';

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
              <ItemImage src={item.image || undefined}>
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