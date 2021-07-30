import React from 'react';
import { Component } from 'react';
import { Modal, ModalBody, ModalFooter } from 'react-bootstrap';
import { Button } from 'react-bootstrap';
import ModalHeader from 'react-bootstrap/esm/ModalHeader';
import Calculator from './calculator'


class ModalCalculator extends Component{
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

        return(
            <div>
                <Button onClick = {()=>this.handleModal()}>Calculator</Button>
                <Modal show= {this.state.show} onHide = {()=>this.handleModal()}>
                    <ModalHeader closeButton>
                        Calculator
                    </ModalHeader>
                    <ModalBody>
                        <Calculator/>
                    </ModalBody>
                    <ModalFooter>
                        <Button onClick = {()=>this.handleModal()}>Close</Button>
                    </ModalFooter>
                </Modal>
            </div>
        )
    }
} 

export default ModalCalculator;
