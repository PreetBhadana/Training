import React,{Component} from 'react';
import './Avtar.css';
import 'tachyons';
import Avtarlist from './Avtarlist'

class Avtar extends Component{

    constructor(){
        super();
        this.state = {
            name : "Welcome to Avtar World"
        }
    }
    
    changeToAltimate(){
        this.setState({
            name : "Welcome To Altimate Avtar World"
        })
    }

    changeBackToNormal(){
        this.setState({
            name : "Welcome to Avtar World"
        })
    }

    render()
    {
        const Avtarlistarray = [
            {
                id: 1,
                name: "Bhadana",
                work: "JS Developer"
            },
            {
                id: 2,
                name: "Vikey",
                work: "Android Developer"
            },
            {
                id: 3,
                name: "Darvesh",
                work: "Front End Developer"
            },
            {
                id: 4,
                name: "Joshi",
                work: "ROR Developer"
            }
        ]
    
        const arrayAvtarCard = Avtarlistarray.map((avtarcard, i) => {
            return <Avtarlist key = {i} id = {Avtarlistarray[i].id} 
                                name = {Avtarlistarray[i].name} 
                                work = {Avtarlistarray[i].work}/>
        })

        return (
            <div className = "mainpage">    
                <h1 className = "tc"> {this.state.name}</h1>
                {arrayAvtarCard}
                <button className = "btn1" onClick = { () => this.changeToAltimate() }> Altimate World </button>
                <br></br>
                <button className = "btn2" onClick = { () => this.changeBackToNormal() }> Back </button>
            </div>
        )
    }
}



export default Avtar;
