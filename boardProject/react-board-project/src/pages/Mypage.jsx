import { useState } from 'react';
import useAuthStore from '../store/authStore';
import useItemStore from '../store/itemStore';
import { Button, ButtonGroup, Container, DeleteButton, EmptyState, Form, FormGroup, Input, ItemActions, ItemCard, ItemImage, ItemInfo, ItemList, ItemPrice, ItemTitle, Label, Section, SectionTitle, StyledLink, Success, Title } from '../styles/Mypage.styled';

const MyPage = () => {
  const user = useAuthStore((state) => state.user);
  
  const items = useItemStore((state) => state.items);
  const deleteItem = useItemStore((state) => state.deleteItem);

  const [isEditing, setIsEditing] = useState(false);
  const myItems = items.filter(item => item.seller === user?.name);

  const handleDelete = (itemId) => {
    if (window.confirm('정말 삭제하시겠습니까?')) {
      deleteItem(itemId);
    }
  };

  return (
    <Container>
      <Title>마이페이지</Title>
      <Section>
        <SectionTitle>내 정보</SectionTitle>
        <Form>
          <FormGroup>
            <Label>이메일</Label>
            <Input value={user?.email || ''} disabled />
          </FormGroup>
          <FormGroup>
            <Label>이름</Label>
            <Input value={user?.name || ''} disabled />
          </FormGroup>
        </Form>
      </Section>

      <Section>
        <SectionTitle>내가 등록한 물품 ({myItems.length})</SectionTitle>
        {myItems.length === 0 ? (
          <EmptyState>등록한 물품이 없습니다.</EmptyState>
        ) : (
          <ItemList>
            {myItems.map(item => (
              <ItemCard key={item.id}>
                <ItemImage src={item.imageUrl || undefined} />
                <ItemInfo>
                    <ItemTitle>{item.title}</ItemTitle>
                    <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
                    <ItemActions>
                        <StyledLink to={`/items/${item.id}`}>상세보기</StyledLink>
                        <DeleteButton onClick={() => handleDelete(item.id)}>삭제</DeleteButton>
                    </ItemActions>
                </ItemInfo>
              </ItemCard>
            ))}
          </ItemList>
        )}
      </Section>
    </Container>
  );
};

export default MyPage;