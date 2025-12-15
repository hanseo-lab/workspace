import { useState, useMemo, useEffect } from 'react'; // useEffect 추가
import useItemStore from '../store/itemStore'; // Store import
import { Container, Controls, EmptyState, Header, ItemCard, ItemGrid, ItemImage, ItemInfo, ItemMeta, ItemPrice, ItemTitle, SearchInput, Select, Title } from '../styles/ItemList.styled';

const ItemListPage = () => {
  // Zustand에서 items 데이터와 fetch 함수 가져오기
  const { items, fetchItems } = useItemStore();
  
  const [searchTerm, setSearchTerm] = useState('');
  const [sortBy, setSortBy] = useState('latest');

  // 컴포넌트 마운트 시 백엔드에서 데이터 로딩
  useEffect(() => {
    fetchItems();
  }, [fetchItems]);

  const filteredAndSortedItems = useMemo(() => {
    // items가 아직 로딩 안됐을 수 있으므로 안전장치
    if (!items) return [];

    let result = [...items];

    // 검색 필터
    if (searchTerm) {
      result = result.filter(item =>
        item.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
        (item.content && item.content.toLowerCase().includes(searchTerm.toLowerCase())) // description -> content로 변경 고려
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
              <ItemImage src={item.imageUrl || undefined}> {/* image -> imageUrl */}
                {!item.imageUrl && '이미지 없음'}
              </ItemImage>
              <ItemInfo>
                <ItemTitle>{item.title}</ItemTitle>
                <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
                <ItemMeta>
                  <span>{item.seller}</span> {/* author -> seller */}
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