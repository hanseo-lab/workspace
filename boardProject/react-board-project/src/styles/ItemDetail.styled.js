import styled from "styled-components";
import { Link } from 'react-router-dom';

export const Container = styled.div`
  max-width: 900px;
  margin: 0 auto;
`;

export const BackButton = styled(Link)`
  display: inline-block;
  color: #007bff;
  text-decoration: none;
  margin-bottom: 2rem;
  
  &:hover {
    text-decoration: underline;
  }
`;

export const ItemContainer = styled.div`
  background: white;
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
`;

export const ItemHeader = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 2rem;
`;

export const ItemInfo = styled.div`
  flex: 1;
`;

export const ItemTitle = styled.h1`
  font-size: 2rem;
  margin-bottom: 1rem;
  color: #333;
`;

export const ItemPrice = styled.p`
  font-size: 2rem;
  font-weight: bold;
  color: #007bff;
  margin-bottom: 1rem;
`;

export const ItemMeta = styled.div`
  color: #666;
  font-size: 0.9rem;
  
  span {
    margin-right: 1rem;
  }
`;

export const ActionButtons = styled.div`
  display: flex;
  gap: 0.5rem;
`;

export const Button = styled.button`
  padding: 0.5rem 1rem;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-weight: 500;
  background-color: ${props => {
    if (props.$variant === 'danger') return '#dc3545';
    if (props.$variant === 'secondary') return '#6c757d';
    return '#007bff';
  }};
  color: white;
  
  &:hover {
    opacity: 0.9;
  }
`;

export const ItemImage = styled.div`
  width: 100%;
  height: 400px;
  background-color: #f0f0f0;
  background-image: url(${props => props.src});
  background-size: cover;
  background-position: center;
  border-radius: 10px;
  margin-bottom: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #999;
  font-size: 1.2rem;
`;

export const ItemDescription = styled.div`
  line-height: 1.6;
  color: #333;
  white-space: pre-wrap;
  margin-bottom: 3rem;
`;

export const CommentsSection = styled.div`
  border-top: 1px solid #eee;
  padding-top: 2rem;
`;

export const CommentsTitle = styled.h2`
  margin-bottom: 1.5rem;
  color: #333;
`;

export const CommentForm = styled.form`
  margin-bottom: 2rem;
`;

export const CommentTextarea = styled.textarea`
  width: 100%;
  min-height: 100px;
  padding: 1rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  resize: vertical;
  font-family: inherit;
  
  &:focus {
    outline: none;
    border-color: #007bff;
  }
`;

export const CommentList = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
`;

export const CommentItem = styled.div`
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 5px;
`;

export const CommentHeader = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
`;

export const CommentAuthor = styled.span`
  font-weight: 600;
  color: #333;
`;

export const CommentDate = styled.span`
  color: #666;
  font-size: 0.9rem;
`;

export const CommentContent = styled.p`
  color: #333;
  line-height: 1.5;
`;

export const CommentActions = styled.div`
  display: flex;
  gap: 0.5rem;
  margin-top: 0.5rem;
`;

export const SmallButton = styled.button`
  padding: 0.25rem 0.5rem;
  font-size: 0.85rem;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  background-color: ${props => props.$variant === 'danger' ? '#dc3545' : '#6c757d'};
  color: white;
  
  &:hover {
    opacity: 0.9;
  }
`;