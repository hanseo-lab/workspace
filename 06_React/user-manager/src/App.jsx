import { useState, useEffect } from 'react'
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom'
import styled from 'styled-components'
import UserList from './pages/UserList'
import UserDetail from './pages/UserDetail'
import UserRegistration from './pages/UserRegistration'
import NotFound from './pages/NotFound'
import './App.css'

const NavBar = styled.nav`
  background-color: #333;
  padding: 15px 20px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 30px;
`

const NavLinks = styled.div`
  display: flex;
  gap: 30px;
`

const StyledLink = styled(Link)`
  color: white;
  font-size: 18px;
  font-weight: bold;

  &:hover {
    color: #ffd43b;
  }
`

const ResetButton = styled.button`
  background-color: #ff6b6b;
  color: white;
  border: none;
  padding: 5px 10px;
  border-radius: 4px;
  font-size: 0.8rem;
  cursor: pointer;
  
  &:hover {
    background-color: #fa5252;
  }
`;

function App() {
  const [users, setUsers] = useState(() => {
    const savedUsers = localStorage.getItem('users');
    if (savedUsers) {
      return JSON.parse(savedUsers);
    } else {
      return [
        { id: 1, name: "신한서", age: 19, isOnline: true },
        { id: 2, name: "신한서", age: 29, isOnline: false },
        { id: 3, name: "신한서", age: 39, isOnline: true },
        { id: 4, name: "신한서", age: 49, isOnline: false },
        { id: 5, name: "신한서", age: 59, isOnline: true },
      ];
    }
  });

  const [nextId, setNextId] = useState(() => {
    if (users.length === 0) return 1;
    const maxId = Math.max(...users.map(u => u.id));
    return maxId + 1;
  });

  useEffect(() => {
    localStorage.setItem('users', JSON.stringify(users));
  }, [users]);

  const deleteUser = (id) => {
    setUsers(users.filter(user => user.id !== Number(id)));
  };

  const addUser = (user) => {
    const newUser = { ...user, id: nextId };
    setUsers([...users, newUser]);
    setNextId(nextId + 1);
  };

  const clearStorage = () => {
    if(window.confirm("모든 데이터를 초기화 하시겠습니까? \n(기본 데이터로 돌아가려면 새로고침이 필요할 수 있습니다)")) {
        localStorage.removeItem('users');
        window.location.reload(); 
    }
  }

  return (
    <BrowserRouter>
      <NavBar>
        <NavLinks>
            <StyledLink to="/">목록</StyledLink>
            <StyledLink to="/user">등록</StyledLink>
        </NavLinks>
        
        <ResetButton onClick={clearStorage}>
            데이터 초기화
        </ResetButton>
      </NavBar>

      <Routes>
        <Route path='/' element={<UserList users={users} />} />
        <Route path='/user/:id' element={<UserDetail users={users} deleteUser={deleteUser} />} />
        <Route path='/user' element={<UserRegistration addUser={addUser} />} />
        <Route path='*' element={<NotFound />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App