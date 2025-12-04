import styled from "styled-components";
import { Link } from 'react-router-dom';

export const Container = styled.div`
  max-width: 1200px;
  margin: 0 auto;
`;

export const Banner = styled.div`
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  padding: 4rem 2rem;
  border-radius: 10px;
  text-align: center;
  margin-bottom: 3rem;
`;

export const Title = styled.h1`
  font-size: 3rem;
  margin-bottom: 1rem;
`;

export const Subtitle = styled.p`
  font-size: 1.2rem;
  margin-bottom: 2rem;
`;

export const BannerButton = styled(Link)`
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

export const Section = styled.section`
  margin-bottom: 3rem;
`;

export const SectionTitle = styled.h2`
  font-size: 2rem;
  margin-bottom: 1.5rem;
  color: #333;
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
`;