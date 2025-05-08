import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

// Components line up
import Header from './Components/Common/Header';
import HomeIndex from './Components/Home/HomeIndex';
import Users from './Components/users/Users';
import TaskManagement from './Components/Tasks/TaskManagement';

function App() {
  return (
    <BrowserRouter basename='/'>
      {/* <Header/> */}
      <Routes>
        <Route path='/' element={<TaskManagement/>} />
        <Route path='/users' element ={<Users/>} />

      </Routes>

    </BrowserRouter>
  );
}

export default App;
