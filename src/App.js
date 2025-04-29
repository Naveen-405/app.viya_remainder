import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

// Components line up
import Header from './Components/Common/Header';
import HomeIndex from './Components/Home/HomeIndex';

function App() {
  return (
    <BrowserRouter basename='/'>
      <Header/>
      <Routes>
        <Route path='/' element={<HomeIndex/>} />
      </Routes>

    </BrowserRouter>
  );
}

export default App;
