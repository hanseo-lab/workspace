import { createContext, useContext } from 'react';
import useItemStore from '../store/itemStore';

const ItemContext = createContext();

export const ItemProvider = ({ children }) => {
  const { 
    items, 
    addItem, 
    updateItem, 
    deleteItem, 
    getItemById,
    addComment,
    updateComment,
    deleteComment
  } = useItemStore();
  
  return (
    <ItemContext.Provider 
      value={{ 
        items, 
        addItem, 
        updateItem, 
        deleteItem, 
        getItemById,
        addComment,
        updateComment,
        deleteComment
      }}
    >
      {children}
    </ItemContext.Provider>
  );
};

export const useItems = () => {
  const context = useContext(ItemContext);
  if (!context) {
    throw new Error('useItems must be used within ItemProvider');
  }
  return context;
};