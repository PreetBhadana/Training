import React from 'react';
import { Component } from 'react';
import { Modal, ModalBody, ModalFooter } from 'react-bootstrap';
import { Button } from 'react-bootstrap';
import ModalHeader from 'react-bootstrap/esm/ModalHeader';
import Login from './login';


class ModalLogin extends Component{
    constructor(){
        super();
        this.state ={
            show: false
        }
        
    }

    handleModal(){
        this.setState({show: !this.state.show})
    }
    render(){
        let modalname = this.props.name;
        console.log(this.modalname)

        return(
            <div>
                <Button onClick = {()=>this.handleModal()}>Login</Button>
                <Modal show= {this.state.show} onHide = {()=>this.handleModal()}>
                    <ModalHeader closeButton>
                        Login Form
                    </ModalHeader>
                    <ModalBody>
                        <Login/>
                    </ModalBody>
                    <ModalFooter>
                        <Button onClick = {()=>this.handleModal()}>Close</Button>
                    </ModalFooter>
                </Modal>
            </div>
        )
    }
} 

export default ModalLogin;