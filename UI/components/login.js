import {useState} from 'react';
import { Button } from 'primereact/button';
import { InputText } from 'primereact/inputtext';
import { Password } from 'primereact/password';

const Login = (props) => {
    return(
        <div className="p-shadow-3" style={{padding:"10px"}}>
            <h3 style={{ fontWeight: 'normal' }}>Sign-In</h3>
            <hr />
            <div className="p-field">
                <label htmlFor="username1" className="p-d-block">Username</label>
                <InputText className="p-d-block"/>
                <small id="username1-help" className="p-d-block">Enter your username.</small>
            </div>
            <div className="p-field">
                <label htmlFor="username1" className="p-d-block">Password</label>
                <Password className="p-d-block"/>
                <small id="username1-help" className="p-d-block">Enter your password.</small>
            </div>
            <hr/>
            <Button type="button" onClick={props.onSubmit} label="Save" className="p-button-success" style={{ marginRight: '.25em' }} />
            <Button type="button" onClick={props.onCancel} label="Cancel" className="p-button-secondary" />
        </div>
    );
}

export default Login;