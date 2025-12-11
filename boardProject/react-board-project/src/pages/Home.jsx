import { useItems } from '../context/ItemContext';
import { Banner, BannerButton, Container, ItemCard, ItemGrid, ItemImage, ItemInfo, ItemPrice, ItemTitle, Section, SectionTitle, Subtitle, Title } from '../styles/Home.styled';

const HomePage = () => {
  const { items } = useItems();
  const recentItems = items.slice(-6).reverse();

  return (
    <Container>
      <Banner>
        <Title>중고거래 마켓에 오신 것을 환영합니다</Title>
        <Subtitle>필요 없는 물건을 팔고, 원하는 물건을 저렴하게 구매하세요!</Subtitle>
        <BannerButton to="/items">물품 둘러보기</BannerButton>
      </Banner>

      <Section>
        <SectionTitle>최근 등록 물품</SectionTitle>
        {recentItems.length === 0 ? (
          <p>아직 등록된 물품이 없습니다.</p>
        ) : (
          <ItemGrid>
            {recentItems.map(item => (
              <ItemCard key={item.id} to={`/items/${item.id}`}>
                <ItemImage src={item.image || undefined}>
                  {!item.image && '이미지 없음'}
                </ItemImage>
                <ItemInfo>
                  <ItemTitle>{item.title}</ItemTitle>
                  <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
                </ItemInfo>
              </ItemCard>
            ))}
          </ItemGrid>
        )}
      </Section>
    </Container>
  );
};

export default HomePage;