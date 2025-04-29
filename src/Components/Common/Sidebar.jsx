// Sidebar.js
import React from 'react';
import { Home, Settings, User, LogOut } from 'lucide-react';

const Sidebar = () => {
  return (
    <div className="h-screen w-64 bg-[#ffffff] border-r-1 border-[#bdbdbd] text-black flex flex-col">
      
      <nav className="flex-1 p-4 space-y-2">
        <SidebarItem icon={<Home />} text="Dashboard" />
        <SidebarItem icon={<User />} text="Profile" />
        <SidebarItem icon={<Settings />} text="Settings" />
        <SidebarItem icon={<LogOut />} text="Logout" />
      </nav>
    </div>
  );
};

const SidebarItem = ({ icon, text }) => (
  <div className="flex items-center gap-3 p-1 hover:bg-[#efefef] cursor-pointer">
   <span className='text-[14px]'>{icon}</span>
    <span className='text-[16px]'>{text}</span>
  </div>
);

export default Sidebar;
