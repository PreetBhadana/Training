import React, {Component} from 'react';

class MultiChkBox extends Component
{   
    state = {
        colornames: {
            cricket: false,
            football: false,
            valeyball: false
        }
    }
    chkclick = (e) =>{
        var {name, checked} = e.target;
        this.setState((e) => {
            var Selectedsport = e.colornames;
            return Selectedsport[name] = checked;
        });
    };
    
    render()
    {
        var display = Object.keys(this.state.colornames).filter((x)=> this.state.colornames[x]);
        return(
                <div>
                    <center>
                        <h1>Test Multiple CheckBoxes</h1>
                        <hr/>
                            <input type = "checkbox" name = "cricket" onChange={this.chkclick}/>Cricket&nbsp;&nbsp;
                            <input type = "checkbox" name = "football" onChange={this.chkclick}/>FootBall&nbsp;&nbsp;
                            <input type = "checkbox" name = "valeyball" onChange={this.chkclick}/>ValeyBall&nbsp;&nbsp;
                        <hr/>
                        <div style = {{backgroundColor: "black", color: "cyan", width: 260}}>
                            <strong>{display+""}</strong>

                        </div>
                    </center>
                </div>
        );
    }
}
export default MultiChkBox;