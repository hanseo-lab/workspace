import React, { useContext } from 'react'
import { useParams } from 'react-router-dom'

const TodoDetail = () => {
    const {id} = useParams();
    const todoList = useContext(TodoStateContext);
    const {handleDelete} = useContext(deleteTodo);
  return (
    <div>TodoDetail</div>
  )
}

export default TodoDetail