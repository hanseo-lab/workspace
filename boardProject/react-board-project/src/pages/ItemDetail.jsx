import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import useItemStore from '../store/itemStore';
import useAuthStore from '../store/authStore';
import axios from 'axios';
import { 
  Container, BackButton, ItemContainer, ItemHeader, ItemInfoMain, 
  CategoryBadge, ItemTitle, StatusTag, ItemPrice, ItemMeta, 
  ActionSection, LikeButton, StatusSelect, ButtonGroup, ActionButton,
  ItemImage, NoImage, ItemContent, CommentSection, CommentTitle,
  CommentForm, CommentInput, CommentButton, CommentList, CommentItem,
  CommentHeader, Writer, DateText,
  // [추가된 스타일 컴포넌트]
  WriterWrapper, CommentActions, ActionText, SaveText, CancelText, DeleteText
} from '../styles/ItemDetail.styled';

const ItemDetailPage = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const { getItemById, deleteItem } = useItemStore();
  const user = useAuthStore((state) => state.user);
  
  const [item, setItem] = useState(null);
  const [comments, setComments] = useState([]); 
  const [newComment, setNewComment] = useState("");
  const [isWished, setIsWished] = useState(false);
  const [editingCommentId, setEditingCommentId] = useState(null);
  const [editContent, setEditContent] = useState("");

  useEffect(() => {
    const loadItem = async () => {
      const foundItem = await getItemById(id);
      if (foundItem) setItem(foundItem);
    };
    loadItem();
    fetchComments();
    if(user) checkWishlist();
  }, [id, user]);

  const fetchComments = async () => {
      try {
          const res = await axios.get(`/api/products/${id}/comments`);
          setComments(res.data);
      } catch (e) { console.error("댓글 로딩 실패"); }
  };

  const checkWishlist = async () => {
      try {
          const res = await axios.get(`/api/products/${id}/wishlist/${user.id}`);
          setIsWished(res.data);
      } catch (e) { console.error("찜 확인 실패"); }
  };

  const handleWishlist = async () => {
      if(!user) return alert("로그인이 필요합니다.");
      try {
          await axios.post(`/api/products/${id}/wishlist`, { memberId: user.id });
          checkWishlist(); 
      } catch (e) { alert("오류 발생"); }
  };

  const handleCommentSubmit = async () => {
      if(!user) return alert("로그인이 필요합니다.");
      if(item.status === 'SOLD_OUT') return alert("판매가 완료된 상품입니다.");
      if(!newComment.trim()) return;
      try {
          await axios.post(`/api/products/${id}/comments`, {
              memberId: user.id,
              content: newComment
          });
          setNewComment("");
          fetchComments(); 
      } catch (e) { alert("댓글 등록 실패"); }
  };

  const startEdit = (comment) => {
    setEditingCommentId(comment.id);
    setEditContent(comment.content);
  };

  const handleUpdateComment = async (commentId) => {
    try {
        await axios.patch(`/api/products/comments/${commentId}`, {
            memberId: user.id,
            content: editContent
        });
        setEditingCommentId(null);
        fetchComments(); 
    } catch (e) { alert("댓글 수정 실패"); }
  };

  const handleDeleteComment = async (commentId) => {
    if(!window.confirm("댓글을 삭제하시겠습니까?")) return;
    try {
        await axios.delete(`/api/products/comments/${commentId}?memberId=${user.id}`);
        fetchComments();
    } catch (e) { alert("댓글 삭제 실패"); }
  };

  const handleStatusChange = async (e) => {
    const newStatus = e.target.value;
    try {
        const formData = new FormData();
        formData.append('status', newStatus);
        await axios.patch(`/api/products/${id}`, formData);
        setItem(prev => ({ ...prev, status: newStatus }));
        alert("상태가 변경되었습니다.");
    } catch (e) {
        alert("상태 변경 실패: " + (e.response?.data?.message || "서버 오류"));
    }
  };

  const handleDelete = async () => {
    if (window.confirm('정말 삭제하시겠습니까?')) {
      await deleteItem(id);
      navigate('/items');
    }
  };

  const getImage = (url) => {
    if (!url) return null;
    return url.startsWith('http') ? url : `http://localhost:8080${url}`;
  };

  if (!item) return <Container>로딩 중...</Container>;
  
  const isAuthor = user && (user.name === item.seller || user.email === item.seller); 
  const isSoldOut = item.status === 'SOLD_OUT';

  return (
    <Container>
      <BackButton to="/items">← 목록으로 돌아가기</BackButton>
      
      <ItemContainer>
        <ItemHeader>
          <ItemInfoMain>
            <CategoryBadge>{item.category || '기타'}</CategoryBadge>
            <ItemTitle>
                {item.title} 
                {item.status !== 'FOR_SALE' && (
                    <StatusTag $status={item.status}>
                        {item.status === 'RESERVED' ? '예약중' : '판매완료'}
                    </StatusTag>
                )}
            </ItemTitle>
            <ItemPrice>{item.price.toLocaleString()}원</ItemPrice>
            <ItemMeta>
              <span>판매자: {item.seller}</span>
              <span>·</span>
              <span>{new Date(item.createdAt).toLocaleDateString()}</span>
              <span>·</span>
              <span>조회 {item.viewCount}</span>
            </ItemMeta>
          </ItemInfoMain>
          
          <ActionSection>
            <LikeButton onClick={handleWishlist}>
                 {isWished ? '❤️' : '🤍'}
            </LikeButton>
            
            {isAuthor && (
              <>
                  <StatusSelect value={item.status} onChange={handleStatusChange}>
                      <option value="FOR_SALE">🟢 판매중</option>
                      <option value="RESERVED">🟡 예약중</option>
                      <option value="SOLD_OUT">🔴 판매완료</option>
                  </StatusSelect>
                  <ButtonGroup>
                    <ActionButton onClick={() => navigate(`/items/edit/${id}`)}>수정</ActionButton>
                    <ActionButton $variant="danger" onClick={handleDelete}>삭제</ActionButton>
                  </ButtonGroup>
              </>
            )}
          </ActionSection>
        </ItemHeader>

        {item.image ? (
            <ItemImage src={getImage(item.image)} alt={item.title} />
        ) : (
            <NoImage>이미지가 없습니다</NoImage>
        )}
        
        <ItemContent>{item.content}</ItemContent> 

        <CommentSection>
            <CommentTitle>문의 / 댓글 ({comments.length})</CommentTitle>
            <CommentForm>
                <CommentInput 
                    type="text" 
                    value={newComment} 
                    onChange={(e)=>setNewComment(e.target.value)}
                    placeholder={isSoldOut ? "판매 완료된 상품입니다." : (user ? "댓글을 남겨주세요." : "로그인 후 작성 가능합니다.")}
                    disabled={!user || isSoldOut}
                />
                <CommentButton onClick={handleCommentSubmit} disabled={!user || isSoldOut}>
                    등록
                </CommentButton>
            </CommentForm>
            
            <CommentList>
                {comments.map(c => (
                    <CommentItem key={c.id}>
                        <CommentHeader>
                            <WriterWrapper>
                                <Writer>{c.writerName}</Writer>
                                <DateText>{new Date(c.createdAt).toLocaleString()}</DateText>
                            </WriterWrapper>
                            
                            {user && user.id === c.memberId && (
                                <CommentActions>
                                    {editingCommentId === c.id ? (
                                        <>
                                            <SaveText onClick={() => handleUpdateComment(c.id)}>저장</SaveText>
                                            <CancelText onClick={() => setEditingCommentId(null)}>취소</CancelText>
                                        </>
                                    ) : (
                                        <>
                                            <ActionText onClick={() => startEdit(c)}>수정</ActionText>
                                            <DeleteText onClick={() => handleDeleteComment(c.id)}>삭제</DeleteText>
                                        </>
                                    )}
                                </CommentActions>
                            )}
                        </CommentHeader>
                        
                        {editingCommentId === c.id ? (
                            <CommentInput 
                                value={editContent} 
                                onChange={(e) => setEditContent(e.target.value)}
                                autoFocus
                            />
                        ) : (
                            <div>{c.content}</div>
                        )}
                    </CommentItem>
                ))}
            </CommentList>
        </CommentSection>
      </ItemContainer>
    </Container>
  );
};

export default ItemDetailPage;