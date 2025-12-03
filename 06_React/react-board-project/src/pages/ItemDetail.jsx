import { useState, useEffect } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import styled from 'styled-components';
import { useItems } from '../context/ItemContext';
import { useAuth } from '../context/AuthContext';

const Container = styled.div`
  max-width: 900px;
  margin: 0 auto;
`;

const BackButton = styled(Link)`
  display: inline-block;
  color: #007bff;
  text-decoration: none;
  margin-bottom: 2rem;
  
  &:hover {
    text-decoration: underline;
  }
`;

const ItemContainer = styled.div`
  background: white;
  border-radius: 10px;
  padding: 2rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
`;

const ItemHeader = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 2rem;
`;

const ItemInfo = styled.div`
  flex: 1;
`;

const ItemTitle = styled.h1`
  font-size: 2rem;
  margin-bottom: 1rem;
  color: #333;
`;

const ItemPrice = styled.p`
  font-size: 2rem;
  font-weight: bold;
  color: #007bff;
  margin-bottom: 1rem;
`;

const ItemMeta = styled.div`
  color: #666;
  font-size: 0.9rem;
  
  span {
    margin-right: 1rem;
  }
`;

const ActionButtons = styled.div`
  display: flex;
  gap: 0.5rem;
`;

const Button = styled.button`
  padding: 0.5rem 1rem;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-weight: 500;
  background-color: ${props => {
    if (props.variant === 'danger') return '#dc3545';
    if (props.variant === 'secondary') return '#6c757d';
    return '#007bff';
  }};
  color: white;
  
  &:hover {
    opacity: 0.9;
  }
`;

const ItemImage = styled.div`
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

const ItemDescription = styled.div`
  line-height: 1.6;
  color: #333;
  white-space: pre-wrap;
  margin-bottom: 3rem;
`;

const CommentsSection = styled.div`
  border-top: 1px solid #eee;
  padding-top: 2rem;
`;

const CommentsTitle = styled.h2`
  margin-bottom: 1.5rem;
  color: #333;
`;

const CommentForm = styled.form`
  margin-bottom: 2rem;
`;

const CommentTextarea = styled.textarea`
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

const CommentList = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
`;

const Comment = styled.div`
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 5px;
`;

const CommentHeader = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
`;

const CommentAuthor = styled.span`
  font-weight: 600;
  color: #333;
`;

const CommentDate = styled.span`
  color: #666;
  font-size: 0.9rem;
`;

const CommentContent = styled.p`
  color: #333;
  line-height: 1.5;
`;

const CommentActions = styled.div`
  display: flex;
  gap: 0.5rem;
  margin-top: 0.5rem;
`;

const SmallButton = styled.button`
  padding: 0.25rem 0.5rem;
  font-size: 0.85rem;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  background-color: ${props => props.variant === 'danger' ? '#dc3545' : '#6c757d'};
  color: white;
  
  &:hover {
    opacity: 0.9;
  }
`;

const ItemDetailPage = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const { getItemById, deleteItem, addComment, updateComment, deleteComment } = useItems();
  const { user, isAuthenticated } = useAuth();
  const [item, setItem] = useState(null);
  const [commentText, setCommentText] = useState('');
  const [editingCommentId, setEditingCommentId] = useState(null);
  const [editingCommentText, setEditingCommentText] = useState('');

  useEffect(() => {
    const foundItem = getItemById(id);
    if (foundItem) {
      setItem(foundItem);
    } else {
      navigate('/404');
    }
  }, [id, getItemById, navigate]);

  const handleDelete = () => {
    if (window.confirm('정말 삭제하시겠습니까?')) {
      deleteItem(id);
      navigate('/items');
    }
  };

  const handleCommentSubmit = (e) => {
    e.preventDefault();
    if (!commentText.trim()) return;

    addComment(id, {
      content: commentText,
      author: user.name,
      authorId: user.id
    });
    setCommentText('');
    setItem(getItemById(id));
  };

  const handleCommentEdit = (commentId) => {
    const comment = item.comments.find(c => c.id === commentId);
    setEditingCommentId(commentId);
    setEditingCommentText(comment.content);
  };

  const handleCommentUpdate = (commentId) => {
    if (!editingCommentText.trim()) return;
    
    updateComment(id, commentId, editingCommentText);
    setEditingCommentId(null);
    setEditingCommentText('');
    setItem(getItemById(id));
  };

  const handleCommentDelete = (commentId) => {
    if (window.confirm('댓글을 삭제하시겠습니까?')) {
      deleteComment(id, commentId);
      setItem(getItemById(id));
    }
  };

  if (!item) return null;

  const isAuthor = user && user.id === item.authorId;

  return (
    <Container>
      <BackButton to="/items">← 목록으로</BackButton>
      
      <ItemContainer>
        <ItemHeader>
          <ItemInfo>
            <ItemTitle>{item.title}</ItemTitle>
            <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
            <ItemMeta>
              <span>작성자: {item.author}</span>
              <span>등록일: {new Date(item.createdAt).toLocaleString()}</span>
            </ItemMeta>
          </ItemInfo>
          
          {isAuthor && (
            <ActionButtons>
              <Button onClick={() => navigate(`/items/edit/${id}`)}>수정</Button>
              <Button variant="danger" onClick={handleDelete}>삭제</Button>
            </ActionButtons>
          )}
        </ItemHeader>

        {item.image && <ItemImage src={item.image} />}
        {!item.image && <ItemImage>이미지 없음</ItemImage>}
        
        <ItemDescription>{item.description}</ItemDescription>

        <CommentsSection>
          <CommentsTitle>구매 희망 댓글 ({item.comments?.length || 0})</CommentsTitle>
          
          {isAuthenticated && (
            <CommentForm onSubmit={handleCommentSubmit}>
              <CommentTextarea
                value={commentText}
                onChange={(e) => setCommentText(e.target.value)}
                placeholder="구매를 희망하시나요? 댓글을 남겨주세요."
              />
              <Button type="submit" style={{ marginTop: '0.5rem' }}>
                댓글 작성
              </Button>
            </CommentForm>
          )}

          <CommentList>
            {item.comments?.map(comment => (
              <Comment key={comment.id}>
                <CommentHeader>
                  <CommentAuthor>{comment.author}</CommentAuthor>
                  <CommentDate>
                    {new Date(comment.createdAt).toLocaleString()}
                  </CommentDate>
                </CommentHeader>
                
                {editingCommentId === comment.id ? (
                  <>
                    <CommentTextarea
                      value={editingCommentText}
                      onChange={(e) => setEditingCommentText(e.target.value)}
                    />
                    <CommentActions>
                      <SmallButton onClick={() => handleCommentUpdate(comment.id)}>
                        저장
                      </SmallButton>
                      <SmallButton 
                        variant="secondary"
                        onClick={() => setEditingCommentId(null)}
                      >
                        취소
                      </SmallButton>
                    </CommentActions>
                  </>
                ) : (
                  <>
                    <CommentContent>{comment.content}</CommentContent>
                    {user && user.id === comment.authorId && (
                      <CommentActions>
                        <SmallButton onClick={() => handleCommentEdit(comment.id)}>
                          수정
                        </SmallButton>
                        <SmallButton 
                          variant="danger"
                          onClick={() => handleCommentDelete(comment.id)}
                        >
                          삭제
                        </SmallButton>
                      </CommentActions>
                    )}
                  </>
                )}
              </Comment>
            ))}
          </CommentList>
        </CommentsSection>
      </ItemContainer>
    </Container>
  );
};

export default ItemDetailPage;