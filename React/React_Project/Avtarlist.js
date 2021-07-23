import React from 'react'
import './Avtar.css';
import 'tachyons';

const Avtarlist = (props) => {
    return (
                <div className = "maindiv_style ma4 bg-light-purple dib pa2 tc grow shadow-4">
                    <img src = {`https://joeschmoe.io/api/v1/${props.name}`}/>
                    <h1>{props.name}</h1>
                    <p>{props.work}</p>
                </div>
    )
} 

export default Avtarlist;

