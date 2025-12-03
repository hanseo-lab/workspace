import { BrowserRouter } from 'react-router-dom';
import AppRoutes from "./routes/route";
import { AuthProvider } from './context/AuthContext';
import { ItemProvider } from './context/ItemContext';

function App() {
  return (
    <BrowserRouter>
      <AuthProvider>
        <ItemProvider>
          <AppRoutes />
        </ItemProvider>
      </AuthProvider>
    </BrowserRouter>
  );
}

export default App;