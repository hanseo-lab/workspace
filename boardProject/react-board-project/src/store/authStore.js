import { create } from 'zustand';

const useAuthStore = create((set) => ({
  user: JSON.parse(localStorage.getItem('user')) || null,
  
  login: (userData) => {
    localStorage.setItem('user', JSON.stringify(userData));
    set({ user: userData });
  },
  
  logout: () => {
    localStorage.removeItem('user');
    set({ user: null });
  },
  
  updateUser: (updatedData) => {
    const users = JSON.parse(localStorage.getItem('users')) || [];
    const userIndex = users.findIndex(u => u.id === updatedData.id);
    
    if (userIndex !== -1) {
      users[userIndex] = updatedData;
      localStorage.setItem('users', JSON.stringify(users));
      localStorage.setItem('user', JSON.stringify(updatedData));
      set({ user: updatedData });
    }
  },
  
  isAuthenticated: () => {
    const user = JSON.parse(localStorage.getItem('user'));
    return user ? true : false;
  }
}));

export default useAuthStore;