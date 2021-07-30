import { Button } from 'react-bootstrap';
import React from 'react';
import { Component } from 'react';
import Calculator from './calculator';
import {Redirect} from 'react-router-dom';



class Login extends Component{
    
    constructor()
    {
        super();
        this.state={
            uname: null,
            pass: null
        }
        this.handelUname = this.handelUname.bind(this);
        this.handelPass = this.handelPass.bind(this);

    }

    handelUname(e)
    {
        this.setState({uname: e.target.value})
    }

    handelPass(e)
    {
        this.setState({pass: e.target.value})
    }

    checkUnamePass()
    {
        if(this.state.uname !== "Preet" && this.state.pass !== "12345")
        {
            alert("Uname And Password is Incorrect!!!")
            this.setState({uname: ''})
            this.setState({pass: ''})
            return false

        }
        else if(this.state.uname !== "Preet")
        {
            alert("User Name is Incorrect!!!")
            this.setState({uname: ''})
            this.setState({pass: ''})
            return false
        }
        else if(this.state.pass !== "12345")
        {
            alert("Password is Incorrect!!!")
            this.setState({uname: ''})
            this.setState({pass: ''})
            return false
        }
        else
        {
            return true
        }
        
    }

    checkTextbox()
    {
        if(this.state.uname === null || this.state.pass === null)
        {
            alert("Please Fill all required fields");
            return false

        }
        else
        {
            return true
        }
    }

    handelLogin(e)
    {
        console.log(this.state.uname)
        console.log(this.state.pass)
        if(this.checkTextbox())
        {
            if(this.checkUnamePass())
            {
                alert("Congratulations Login Success!!!")
                return <Redirect to={"/calculator"}/>
            }
        }
        
    }

    render(){
        return(
            <div>
                <div>
                    <h5>User Name : </h5>&nbsp;
                    <input type = "text" value = {this.state.uname} onChange = {(e)=>this.handelUname(e)}/>
                
                    <br/><br/>
                    <h5>Password : </h5>&nbsp;
                    <input type = "password" value = {this.state.pass} onChange = {(e)=>this.handelPass(e)}/>
                </div>
                    <br/><br/>
                <div>
                    <a href="/calculator.js" target="_blank">
                        <Button> Link Button </Button>
                    </a>
                    <Button onClick = {()=> this.handelLogin()}>Login</Button>
                </div>
            </div>
        )
    }
}
export default Login;