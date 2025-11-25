import { useState } from 'react'
import './App.css'
import Profile from './componets/Profile'

const profiles = [{
  id: 1,
  name: "신한서", 
  age: 19,
  isOnline: true,
},{
  id: 2,
  name: "신한서",
  age: 29,
  isOnline: false,
},{
  id: 3,
  name: "신한서",
  age: 39,
  isOnline: true,
},{
  id: 4,
  name: "신한서",
  age: 49,
  isOnline: false,
},{
  id: 5,
  name: "신한서",
  age: 59,
  isOnline: true,
}]

function App() {

  return (
    <table>
      <thead>
        <tr>
          <th>사용자 이름</th>
          <th>나이</th>
          <th>온라인 여부</th>
        </tr>
      </thead>
      <tbody>
        {profiles.map(p => <Profile key={p.id} profile={p}/>)}
      </tbody>
    </table>
  )
}

export default App