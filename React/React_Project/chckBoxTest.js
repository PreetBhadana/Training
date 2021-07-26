import React, { useEffect, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

const userData = [{name: "Python"}, {name: "Ruby"}, {name: "Perl"}, {name: "Java"}];

function ChckBoxTest()
{
    const [users, setUsers] = useState([]);

    useEffect(() => {
        setUsers(userData);
    }, []);

    const handleChange = (e) =>{
        const {name, checked} = e.target;
        if (name === "allselect")
        {
            let tempUser = users.map(user => {return {...user, isChecked : checked}});
            setUsers(tempUser);
        }
        else
        {
            let tempUser = users.map((user) => user.name === name ? {...user, isChecked : checked} : user);
            setUsers(tempUser);
        }

        

    };

    return(
        <div className = "container my-4" style ={{width: 400}}>
            <form className = "form">
                <h3>Select Language</h3>
                <div className = "form-check">
                    <input type =  "checkbox" 
                            className = "form-check-input" 
                            name = "allselect"
                            checked = {users.filter(user => user?.isChecked !== true).length < 1}
                            onChange = {handleChange}/>
                    <label className = "form-check-label ms-2">All Select</label>
                </div>
                {users.map((user)=> (
                    <div className = "form-check">
                        <input type = "checkbox" 
                                className = "form-check-input" 
                                name = {user.name} 
                                checked = {user?.isChecked || false}
                                onChange = {handleChange}/>
                        <label className = "form-check-label ms-2">{user.name}</label>

                    </div>
                ))}
                    
            </form>

        </div>
    );
}
export default ChckBoxTest;