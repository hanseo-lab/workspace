import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import useItemStore from '../store/itemStore';
import useAuthStore from '../store/authStore';
import { ActionButtons, BackButton, Button, Container, ItemContainer, ItemDescription, ItemHeader, ItemImage, ItemInfo, ItemMeta, ItemPrice, ItemTitle } from '../styles/ItemDetail.styled';

const ItemDetailPage = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  
  // Zustand 사용
  const { getItemById, deleteItem } = useItemStore();
  const user = useAuthStore((state) => state.user);
  
  const [item, setItem] = useState(null);

  useEffect(() => {
    const loadItem = async () => {
      const foundItem = await getItemById(id);
      if (foundItem) {
        setItem(foundItem);
      } else {
        // navigate('/404'); // 에러 페이지가 있다면
      }
    };
    loadItem();
  }, [id, getItemById]);

  const handleDelete = async () => {
    if (window.confirm('정말 삭제하시겠습니까?')) {
      await deleteItem(id);
      navigate('/items');
    }
  };

  // 백엔드 API가 아직 댓글 기능을 지원하지 않으므로 댓글 부분은 주석 처리하거나 
  // Product 엔티티에 Comment 리스트를 추가하는 작업을 백엔드에서 먼저 해야 합니다.
  
  if (!item) return <Container>로딩 중...</Container>;

  // 작성자 확인 (백엔드에서는 seller로 저장됨) -> 로그인한 user.name과 비교
  const isAuthor = user && (user.name === item.seller || user.email === item.seller); 

  return (
    <Container>
      <BackButton to="/items">← 목록으로</BackButton>
      
      <ItemContainer>
        <ItemHeader>
          <ItemInfo>
            <ItemTitle>{item.title}</ItemTitle>
            <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
            <ItemMeta>
              <span>판매자: {item.seller}</span>
              <span>등록일: {new Date(item.createdAt).toLocaleString()}</span>
            </ItemMeta>
          </ItemInfo>
          
          {isAuthor && (
            <ActionButtons>
              {/* 수정 페이지로 이동 */}
              <Button onClick={() => navigate(`/items/edit/${id}`)}>수정</Button>
              <Button $variant="danger" onClick={handleDelete}>삭제</Button>
            </ActionButtons>
          )}
        </ItemHeader>

        {item.imageUrl ? <ItemImage src={item.imageUrl} /> : <ItemImage>이미지 없음</ItemImage>}
        
        <ItemDescription>{item.content}</ItemDescription> 
        {/* description -> content (백엔드 필드명과 일치) */}

        {/* 댓글 섹션은 백엔드 Comment 구현 후 주석 해제하여 연결하세요 */}
        {/* <CommentsSection> ... </CommentsSection> */}

      </ItemContainer>
    </Container>
  );
};

export default ItemDetailPage;