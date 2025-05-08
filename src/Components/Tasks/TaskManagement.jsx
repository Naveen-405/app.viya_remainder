import React, { useEffect, useState } from "react";

const TaskManagement = () => {
  const [tasks, setTasks] = useState([]);

  const getAllTasks = async () => {
    try {
      const response = await fetch("http://192.168.238.97/projects/crud/gettasks.php");
      const data = await response.json();
      console.log(data);
      setTasks(data);
    } catch (error) {
      console.error("Error fetching data", error);
    }
  };

  useEffect(() => {
    getAllTasks();
  }, []); // Correct dependency array

  return (
    <div className="table-responsive">
      <h2>Task List</h2>
      <table border="1" cellPadding="10" className="table">
        <thead>
          <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Status</th>
            <th>Priority</th>
            <th>Due Date</th>
          </tr>
        </thead>
        <tbody>
          {tasks.map((task, index) => (
            <tr key={index}>
              <td>{task.title}</td>
              <td>{task.description}</td>
              <td>{task.status}</td>
              <td>{task.priority}</td>
              <td>{task.due_date}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default TaskManagement;
