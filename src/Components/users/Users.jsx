import React, { useEffect, useState } from "react";

const Users = () => {
  const [users, setUsers] = useState([]);

  const getAllUsersData = async () => {
    try {
      const response = await fetch("http://192.168.238.97/projects/crud/getusers.php");
      const data = await response.json();
      setUsers(data);
    } catch (error) {
      console.error("Error while fetching:", error);
    }
  };



  useEffect(() => {
    getAllUsersData();
  }, []);

  return (
    <div className="p-4">
      <h2 className="text-2xl font-bold mb-4">User List</h2>
      <div className="overflow-x-auto">
        <table className="min-w-full bg-white border border-gray-200 rounded shadow">
          <thead className="bg-gray-100 text-left">
            <tr>
              <th className="px-4 py-2 border-b">ID</th>
              <th className="px-4 py-2 border-b">Name</th>
              <th className="px-4 py-2 border-b">Email</th>
              <th className="px-4 py-2 border-b">Phone</th>
              <th className="px-4 py-2 border-b">Created At</th>
              <th className="px-4 py-2  border-b">Action</th>
            </tr>
          </thead>
          <tbody>
            {users.length > 0 ? (
              users.map((user) => (
                <tr key={user.pk_user_id} className="hover:bg-gray-50">
                  <td className="px-4 py-2 border-b">{user.pk_user_id}</td>
                  <td className="px-4 py-2 border-b">{user.name}</td>
                  <td className="px-4 py-2 border-b">{user.email}</td>
                  <td className="px-4 py-2 border-b">{user.phone}</td>
                  <td className="px-4 py-2 border-b">{user.created_at}</td>
                  <td className="px-4 py-2 border-b flex gap-2">
                    <button className="px-3 py-2 border"> Add</button>
                    <button className="px-3 py-2 bg-blue-400"> view</button>
                    <button className="px-3 py-2 bg-red-400"> Del</button>
                  </td>
                </tr>
              ))
            ) : (
              <tr>
                <td colSpan="5" className="text-center py-4 text-gray-500">
                  No users found.
                </td>
              </tr>
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Users;
