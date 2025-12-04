import { createContext, useContext } from 'react';
import useAuthStore from '../store/authStore';

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const { user, login, logout, updateUser, isAuthenticated } = useAuthStore();
  
  const signup = (userData) => {
    const users = JSON.parse(localStorage.getItem('users')) || [];
    
    // 중복 이메일 체크
    const existingUser = users.find(u => u.email === userData.email);
    if (existingUser) {
      throw new Error('이미 존재하는 이메일입니다.');
    }
    
    const newUser = {
      ...userData,
      id: Date.now().toString(),
      createdAt: new Date().toISOString()
    };
    
    users.push(newUser);
    localStorage.setItem('users', JSON.stringify(users));
    login(newUser);
    
    return newUser;
  };
  
  const loginUser = (email, password) => {
    const users = JSON.parse(localStorage.getItem('users')) || [];
    const user = users.find(u => u.email === email && u.password === password);
    
    if (!user) {
      throw new Error('이메일 또는 비밀번호가 올바르지 않습니다.');
    }
    
    login(user);
    return user;
  };
  
  return (
    <AuthContext.Provider 
      value={{ 
        user, 
        signup, 
        login: loginUser, 
        logout, 
        updateUser, 
        isAuthenticated: isAuthenticated() 
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used within AuthProvider');
  }
  return context;
};