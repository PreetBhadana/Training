import React from 'react';
import { Component } from 'react';
import { Button, Modal } from 'react-bootstrap';

class ModalTest extends Component{

    constructor(){
        super();
        this.state ={
            show: false,
            selectedLanguages: ['Python', 'Java'],
            languageArray: ["Python", "Ruby", "Java", "Perl"]
        }
    }

    handelModal(){
        this.setState({show: !this.state.show})
    }

    handleChild = (e) => {
      if(e.target.checked){
        this.setState({
          selectedLanguages: [...this.state.selectedLanguages, e.target.id]
        })
      }else{

      }
    }

    

    render(){
        console.log(this.state.selectedLanguages)
        const projectsArray = ["Hotel Management", "Student Management", "Gym Management","Office Management"]
        const projects = projectsArray.map((project, i) =>{
            return(
                <div>
                    <input type = "checkbox"/>{projectsArray[i]}&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            )
        })

        return (
            <div>
                <Button onClick = {()=> this.handelModal()} >Try Me</Button>
                <Modal show = {this.state.show} onHide = {()=> this.handelModal()}>
                    <Modal.Header closeButton>
                        Cources And Projects
                    </Modal.Header>
                    <Modal.Body>
                        <div>


                          {this.state.languageArray.map((language, i) =>
                            <div>
                              <input type = "checkbox" id={language}  checked={this.state.selectedLanguages.includes(language)} onChange={(e) => this.handleChild(e)} />
                              <label htmlFor={language} >{language}</label>
                            </div>
                          )}
                            
                            <hr/>
                            <input type = "checkbox"/> Projects
                            {projects}
                        </div>
                    </Modal.Body>
                    <Modal.Footer>
                        <Button onClick = {()=> this.handelModal()}>Close</Button>
                    </Modal.Footer>
                </Modal>
            </div>
        );
    }

}
export default ModalTest;