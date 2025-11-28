import React from 'react'
import styled from 'styled-components'
import { Link } from 'react-router-dom'

const Tr = styled.tr`
  background-color: #f9f9f9;
  
  td {
    border: 1px solid #ddd;  
    padding: 12px;           
    font-size: 16px;        
    text-align: center;    
  }
`

const IsOnline = styled.td`
  color: ${(props) => (props.$isOnline ? 'green' : 'gray')};
  font-weight: bold;
` 

const UserList = ({users}) => {
  return (
    <div>
        <h2> 유저 목록 페이지</h2>
        
        <Link to="/user">
            <button>유저 등록</button>
        </Link>
        
        <br/><br/>

        <table>
            <thead>
                <Tr>
                    <th>이름</th>
                    <th>나이</th>
                    <th>상태</th>
                    <th>상세보기</th>
                </Tr>
            </thead>
            <tbody>
                {users.map((user) => (
                    <Tr key={user.id}>
                        <td>{user.name}</td>
                        <td>{user.age}세</td>
                        <IsOnline $isOnline={user.isOnline}>
                            {user.isOnline ? '🟢 온라인 상태입니다.' : '🔴 오프라인 상태입니다.'}
                        </IsOnline>
                        
                        <td>
                            <Link to={`/user/${user.id}`}>자세히 보기</Link>
                        </td>
                    </Tr>
                ))}
            </tbody>
        </table>
    </div>
  )
}

export default UserList;