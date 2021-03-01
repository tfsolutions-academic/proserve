import {useState, useContext, useEffect} from 'react';
import faker, { fake } from 'faker';
import Head from 'next/head';
import { Card } from 'primereact/card';
import { Knob } from 'primereact/knob';
import { InputText } from 'primereact/inputtext';
import { Panel } from 'primereact/panel';
import { Button } from "primereact/button";
import { Badge } from 'primereact/badge';
import AppContext from '../utils/appContext';

const venueEntity = {
    "name": faker.company.companyName(),
    "capacity": faker.random.number({min :1500, max: 5000}),
    "address": {
        "address1": faker.address.streetName(),
        "address2": faker.address.secondaryAddress(),
        "city": faker.address.city(),
        "state": faker.address.stateAbbr(),
        "pincode": faker.address.zipCode()
    },
    "amenties": {
        "CarParking": faker.random.boolean(),
        "Restrooms": true,
        "AirConditioning": faker.random.boolean(),
        "Kitchen": faker.random.boolean(),
        "Furnitures": faker.random.boolean()
    },
    "Contacts": [
        {
        "name": faker.name.firstName(faker.random.number({min:1,max:2})),
        "number": faker.phone.phoneNumber(),
        "whatsapp": faker.random.boolean(),
        "primary": true
        }
    ],
    "published_at": new Date().toISOString(),
    "created_by": "proserve admin",
    "updated_by": "proserve admin"
}

const orgainizerEntity = {
    "name": faker.name.firstName(),
    "contact": [
      {
        "name": faker.name.lastName(),
        "number": faker.phone.phoneNumber(),
        "whatsapp": faker.random.boolean(),
        "primary": faker.random.boolean()
      }
    ],
    "published_at": new Date().toISOString(),
    "created_by": "proserve admin",
    "updated_by": "proserve admin"
}

const EntityGenerator = (props) => {
    const [index, setIndex] = useState(0);
    const [count,setCount] = useState(10);
    const [status,setStatus] = useState({success : 0, failed : 0});

    const onGenerateData = async () => {
        const postData = async (data) => {
            return await props.service.post(props.endPoint,data); 
        }
        setStatus({success : 0, failed : 0});
        setIndex(0);
        let successCnt = 0;
        let failedCnt = 0;
        for(let i=0;i<=count-1;i++){
            try{
                let entity = props.entity;
                await postData(entity);
                successCnt++;
            }catch(er){
                failedCnt++;
                console.log(er);
            }
            setIndex(i+1);
        }
        setStatus({success : successCnt, failed : failedCnt});
    }

    return(
        <Card header={props.header}>
            <div className="p-inputgroup">
                <InputText value={count} onChange={(e) => setCount(e.target.value)} />
                <Button icon="pi pi-check" label="Generate" onClick={onGenerateData} className="p-button-success"/>
            </div>
            <div style={{"display":"flex","flexDirection":"row","alignItems":"center","justifyContent":"space-evenly"}}>
                <Knob value={index} min={0} max={count} /> 
                <div>
                        <Button type="button" label="Success">
                            <Badge value={status.success} severity="success"/>
                        </Button>
                        <hr />
                        <Button type="button" label="Failed">
                            <Badge value={status.failed} severity="danger"/>
                        </Button>
                </div>
            </div>
        </Card> 
    );
}

const DataGenerator = (props) => {
    const appContext = useContext(AppContext);

    return(
        <Card style={{height:'100vh', backgroundColor:'ivory'}}>
            <Head>
                <title>ProServe - Data Generator</title>
                <link rel="icon" href="/favicon.ico" />
            </Head>
            <Panel header="Generate">
                <div className="p-grid p-fluid">
                    <div className="p-col-12 p-md-4">
                        <EntityGenerator header="Venues" service={appContext.axiosInstance} entity={venueEntity} endPoint="/venues" />
                    </div>

                    <div className="p-col-12 p-md-4">
                        <EntityGenerator header="Orgainizers" service={appContext.axiosInstance} entity={orgainizerEntity} endPoint="/orgainizers" />
                    </div>

                    <div className="p-col-12 p-md-4">
                        
                    </div>
                </div>
            </Panel>
        </Card>
    );
}

export default DataGenerator;