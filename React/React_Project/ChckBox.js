import React from 'react';
import { Component } from 'react';
import { Button, Modal } from 'react-bootstrap';


class ChckBox extends Component{
    constructor(){
        super();
        this.state = {
            show: false,
            showChild: false,
            isChecked: false,
            selectedLanguages: [],
            languageArray: ["Python", "Ruby", "Java", "Perl"]
        }
    }
    
    handelModal(){
        this.setState({show: !this.state.show})
    }

    handelParent()
    {
        this.setState({showChild: !this.state.showChild, isChecked: !this.state.showChild})
        this.setState({selectedLanguages: this.state.languageArray})
    }
    countChild(){
        this.setState({showChild: false, isChecked: false})
    }

    handelChild = (e) => {
        if(this.state.selectedLanguages.length === 0)
            {
                this.countChild();
            }
        if(e.target.checked){
            this.setState({selectedLanguages: [...this.state.selectedLanguages, e.target.id]})
        }
        else{
            let filtered = this.state.selectedLanguages.filter(lang => lang !== e.target.id)
            this.setState({selectedLanguages: filtered})
        }
        
        
    }

    render(){
        console.log(this.state.selectedLanguages);
        console.log(this.state.selectedLanguages.length)
        
        return(
            <div>
                <Button onClick = {()=> this.handelModal()} >Try Me</Button>
                <Modal show = {this.state.show} onHide = {()=> this.handelModal()}>
                    <Modal.Header closeButton>
                        Cources
                    </Modal.Header>
                    <Modal.Body>
                        <div>
                            <div>
                                <input type = "checkbox" 
                                        checked = {this.state.isChecked} 
                                        onChange = {()=> this.handelParent()}/>All_Programs
                            </div>
                            {this.state.showChild?<div>    <hr/>
                                {this.state.languageArray.map((language, i) => 
                                    <div>
                                    <input type = "checkbox" id = {language} 
                                            checked = {this.state.selectedLanguages.includes(language)} 
                                            onChange = {(e)=>this.handelChild(e)}/>
                                    <label htmlFor={language}>{language}</label>
                                    </div>
                                )}
                            </div>:null}
                        </div>
                    </Modal.Body>
                    <Modal.Footer>
                        <Button onClick = {()=> this.handelModal()}>Close</Button>
                    </Modal.Footer>
                </Modal>
            </div>
        )
    }
}
export default ChckBox;