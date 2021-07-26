import React, {Component} from 'react';
import ReactDOM from "react-dom";
//import Button from 'react-bootstrap/Button';
import {Button, Modal} from 'react-bootstrap'


class Test extends Component{

    constructor(){
        super();
        this.state ={
            show: false
        }
    }

    handelModal(){
        this.setState({show: !this.state.show})
    }

    render(){

        return (
            <div>
                <h1>Hello Friends</h1>
                <Button onClick = {() => this.handelModal()}>Test Modal</Button>
                <Modal show = {this.state.show} onHide = {() => this.handelModal()}>
                    <Modal.Header closeButton >
                        Modal Heading--
                    </Modal.Header>
                    <Modal.Body>
                        Text Area--
                    </Modal.Body>
                    <Modal.Footer>
                        <Button onClick = {() => this.handelModal()}>Close</Button>
                        <Button onClick = {() => this.handelModal()}>Save</Button>
                    </Modal.Footer>
                </Modal>
                
            </div>
        );
    }

}

export default Test;