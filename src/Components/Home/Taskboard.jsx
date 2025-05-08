import React from 'react'
import BGImage from "../Assets/TaskBoard/taskboard.jpg"

const Taskboard = () => {
  return (
    <div className={`w-full h-full`}
    style={{ backgroundImage: `url(${BGImage})` }}
    >
      Hello
    </div>
  )
}

export default Taskboard