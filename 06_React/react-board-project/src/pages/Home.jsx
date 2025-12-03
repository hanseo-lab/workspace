import { Link } from 'react-router-dom';
import styled from 'styled-components';
import { useItems } from '../context/ItemContext';

const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
`;

const Banner = styled.div`
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 4rem 2rem;
  border-radius: 10px;
  text-align: center;
  margin-bottom: 3rem;
`;

const Title = styled.h1`
  font-size: 3rem;
  margin-bottom: 1rem;
`;

const Subtitle = styled.p`
  font-size: 1.2rem;
  margin-bottom: 2rem;
`;

const BannerButton = styled(Link)`
  display: inline-block;
  background-color: white;
  color: #667eea;
  padding: 1rem 2rem;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  transition: transform 0.2s;
  
  &:hover {
    transform: translateY(-2px);
  }
`;

const Section = styled.section`
  margin-bottom: 3rem;
`;

const SectionTitle = styled.h2`
  font-size: 2rem;
  margin-bottom: 1.5rem;
  color: #333;
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
`;

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
                <ItemImage src={item.image}>
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