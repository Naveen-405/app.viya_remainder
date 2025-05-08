import React from 'react'
import Sidebar from '../Common/Sidebar'
import Taskboard from './Taskboard'

const HomeIndex = () => {
  return (
    <>
      <div className="container max-w-[1024px] flex">
        <div className='w-[30%]'>
          <Sidebar />
        </div>
        <div className='w-[70%] h-full'>
            <Taskboard />
        </div>
      </div>

    </>
  )
}

export default HomeIndex