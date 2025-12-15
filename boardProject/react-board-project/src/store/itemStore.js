import { create } from 'zustand';
import axios from 'axios';

const API_URL = '/api/products'
const useItemStore = create((set, get) => ({
  items: [],
  
  // 전체 조회 (초기 로딩용)
  fetchItems: async () => {
    try {
      const response = await axios.get(API_URL);
      set({ items: response.data });
    } catch (error) {
      console.error('상품 목록 불러오기 실패:', error);
    }
  },

  // 상세 조회
  getItemById: async (id) => {
    // 1. 스토어에 있으면 그거 반환, 없으면 서버 요청 (선택 사항)
    try {
        const response = await axios.get(`${API_URL}/${id}`);
        return response.data;
    } catch (error) {
        console.error('상품 조회 실패', error);
    }
  },
  
  addItem: async (itemData) => {
    try {
      // itemData에는 title, content(description), price, imageUrl, seller 등이 포함되어야 함
      const response = await axios.post(API_URL, itemData);
      set((state) => ({ items: [response.data, ...state.items] })); // 최신글 맨 앞
      return response.data;
    } catch (error) {
      console.error('상품 등록 실패:', error);
      throw error;
    }
  },
  
  updateItem: async (id, updatedData) => {
    try {
      const response = await axios.put(`${API_URL}/${id}`, updatedData);
      set((state) => ({
        items: state.items.map(item => item.id === id ? response.data : item)
      }));
    } catch (error) {
      console.error('수정 실패:', error);
    }
  },
  
  deleteItem: async (id) => {
    try {
      await axios.delete(`${API_URL}/${id}`);
      set((state) => ({
        items: state.items.filter(item => item.id !== id)
      }));
    } catch (error) {
      console.error('삭제 실패:', error);
    }
  }
}));

export default useItemStore;