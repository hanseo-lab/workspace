import { useState, useEffect } from 'react';
import { useParams, useNavigate, Link } from 'react-router-dom';
import { useItems } from '../context/ItemContext';
import { useAuth } from '../context/AuthContext';
import { ActionButtons, BackButton, Button, CommentActions, CommentContent, CommentDate, CommentForm, CommentList, CommentsSection, CommentsTitle, CommentTextarea, Container, ItemContainer, ItemDescription, ItemHeader, ItemImage, ItemInfo, ItemMeta, ItemPrice, ItemTitle, SmallButton } from '../styles/ItemDetail.styled';

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
                <CommentHeadet>
                  <CommentAuthor>{comment.author}</CommentAuthor>
                  <CommentDate>
                    {new Date(comment.createdAt).toLocaleString()}
                  </CommentDate>
                </CommentHeadet>
                
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