import React, { useEffect, useState } from 'react'

const GetUsers = () => {
    const [users, setUsers] = useState([])

    const getAllUsersData = async() =>{
        const response = fetch("http://192.168.238.97/projects/crud/getusers.php")

        try {
            if(response){
                setUsers(response.data)
            }
        } catch {
            console.error("error while fecthing")
        }
        
    }

    useEffect(()=>{
        getAllUsersData()
    }, [])
    
  return (
    <>
        {users.map((index, data)=>{
            <ul>
                <li key={index}>{data}</li>
            </ul>
        })}   
    </>
  )
}

export default GetUsers