import React from 'react';
import { Component } from 'react';
import { Button } from 'react-bootstrap';
import './calculator.css';

class Calculator extends Component{

    constructor(){
        super();
        this.state = {
            fnum: null,
            snum: null,
            result: null,
            disable: false,
            validation: 'alert'
            
        }
        this.updateFnum = this.updateFnum.bind(this);
        this.updateSnum = this.updateSnum.bind(this);
    };

    updateFnum(e){
        this.setState({fnum: e.target.value})
        if(this.state.validation === 'disable' && (this.state.fnum === '' || this.state.snum === ''))
        {
            this.setState({disable: true})
        }
        else
        {
            //this.setState({fnum: e.target.value})
            this.setState({disable: false})
        }
    }
    updateSnum(e){
        this.setState({snum: e.target.value})
        if(this.state.validation === 'disable' && (this.state.snum === '' || this.state.fnum === ''))
        {
            this.setState({disable: true})
        }
        else
        {
            this.setState({disable: false})
        }
        
    }

    checkNums(e)
    {
        if(this.state.fnum === null || this.state.snum === null)
        {
            if(this.state.validation === 'alert')
            {
                this.setState({result: ''})
                alert("Alert, Please fill all fields !!!")
                return false
            }
            else
            {
                this.setState({disable: true})
                alert("Alert, Please fill all fields else all Buttons will remain Disabled !!!")
                return false
            }
        
        }
        else
        {
            return true 
        }
    }

    calculate(par)
    {
        if(this.checkNums()){
            switch (par)
            {
                case 'add': this.setState({result: parseInt(this.state.fnum) + parseInt(this.state.snum)})
                    break;
                
                case 'sub': this.setState({result: parseInt(this.state.fnum) - parseInt(this.state.snum)}) 
                    break;
                
                case 'mult': this.setState({result: parseInt(this.state.fnum) * parseInt(this.state.snum)})
                    break;

                case 'divi': this.setState({result: parseInt(this.state.fnum) / parseInt(this.state.snum)}) 
                    break;

                case 'squareadd': let x = parseInt(this.state.fnum) + parseInt(this.state.snum)
                    this.setState({result: x*x})
                    break;

                default:
                    alert("Plz do something !!!")
                    break;

            }
        }
    }

    handleRadio(par)
    {   
        switch (par)
        {
            case 'disable': this.setState({validation: 'disable', disable: true})
                break;
            default: this.setState({validation: 'alert', disable: false})
                break;
        }

    }

    handleClear(e)
    {
        this.setState({fnum: '', snum: '', result: ''})
    }

    render(){

        return(
            <div className = "mainDiv">
                <div className = "fdiv">    
                    <h5>Number 1 : -- </h5>
                    <input type = "text" value = {this.state.fnum} onChange = {(e)=> this.updateFnum(e)}/>
                    <br/>
                    <h5>Number 2 : -- </h5>
                    <input type = "text" value = {this.state.snum} onChange = {(e)=> this.updateSnum(e)}/>
                    <br/><br/>
                    <h5>Total : -- </h5>
                    <input type = "text" value = {this.state.result} disabled/>
                </div>
                <br/><hr/>
                <div className = "btndiv">
                    <Button onClick = {(e) => this.calculate('add')} disabled = {this.state.disable}>ADD</Button>&nbsp;
                    <Button onClick = {(e)=> this.calculate('sub')} disabled = {this.state.disable}>SUB</Button>&nbsp;
                    <Button onClick = {(e)=> this.calculate('mult')} disabled = {this.state.disable}>MULT</Button>&nbsp;
                    <Button onClick = {(e)=> this.calculate('divi')} disabled = {this.state.disable}>DIVIDE</Button>&nbsp;
                    <Button onClick = {(e)=> this.calculate('squareadd')} disabled = {this.state.disable}>Square of sum</Button>
                </div>
                <br/>
                <h3>Validation Type---</h3>
                <div className = "radiodiv">
                    <input type = "radio" id = "alert" value = "alert" name = "validation" onChange = {(e) => this.handleRadio('alert')} defaultChecked/>
                    <label htmlFor = "alert">Alert Popup</label>
                    <br/>
                    <input type = "radio" id = "disable" value = "disable" name = "validation" onChange = {(e) => this.handleRadio('disable')}/>
                    <label htmlFor = "disable">Disable Buttons</label>
                    
                </div>
                <br/>
                <div className = "cleardiv">
                    <Button className = "clearbtn" onClick = {(e)=> this.handleClear()} disabled = {this.state.disable}>Clear</Button>
                </div>
                
            </div>
        )
    }
}
export default Calculator;