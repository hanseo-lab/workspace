import { create } from 'zustand';

const useItemStore = create((set, get) => ({
  items: JSON.parse(localStorage.getItem('items')) || [],
  
  addItem: (item) => {
    const newItem = {
      ...item,
      id: Date.now().toString(),
      createdAt: new Date().toISOString(),
      comments: []
    };
    
    const items = [...get().items, newItem];
    localStorage.setItem('items', JSON.stringify(items));
    set({ items });
    return newItem;
  },
  
  updateItem: (id, updatedData) => {
    const items = get().items.map(item => 
      item.id === id ? { ...item, ...updatedData } : item
    );
    localStorage.setItem('items', JSON.stringify(items));
    set({ items });
  },
  
  deleteItem: (id) => {
    const items = get().items.filter(item => item.id !== id);
    localStorage.setItem('items', JSON.stringify(items));
    set({ items });
  },
  
  getItemById: (id) => {
    return get().items.find(item => item.id === id);
  },
  
  addComment: (itemId, comment) => {
    const items = get().items.map(item => {
      if (item.id === itemId) {
        const newComment = {
          ...comment,
          id: Date.now().toString(),
          createdAt: new Date().toISOString()
        };
        return {
          ...item,
          comments: [...(item.comments || []), newComment]
        };
      }
      return item;
    });
    localStorage.setItem('items', JSON.stringify(items));
    set({ items });
  },
  
  updateComment: (itemId, commentId, content) => {
    const items = get().items.map(item => {
      if (item.id === itemId) {
        return {
          ...item,
          comments: item.comments.map(comment =>
            comment.id === commentId ? { ...comment, content } : comment
          )
        };
      }
      return item;
    });
    localStorage.setItem('items', JSON.stringify(items));
    set({ items });
  },
  
  deleteComment: (itemId, commentId) => {
    const items = get().items.map(item => {
      if (item.id === itemId) {
        return {
          ...item,
          comments: item.comments.filter(comment => comment.id !== commentId)
        };
      }
      return item;
    });
    localStorage.setItem('items', JSON.stringify(items));
    set({ items });
  }
}));

export default useItemStore;