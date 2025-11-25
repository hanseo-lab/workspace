import React from 'react'
import styled from 'styled-components';

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

const Profile = (props) => {
    const { profile } = props; 
    
    return (
      <Tr>
        <td>{profile.name}</td>
        <td>{profile.age}세</td>
        
        <IsOnline $isOnline={profile.isOnline}>
            {profile.isOnline ? '🟢 온라인 상태입니다.' : '🔴 오프라인 상태입니다.'}
        </IsOnline>
      </Tr>
    )
}

export default Profile