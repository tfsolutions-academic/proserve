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


const generateVenues = (count) => {

    let venues = [];

    for(let i=0;i<=count-1;i++){
        venues.push(
            {
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
        );
    }

    return venues;
}

const generateOrgainizers = (count) => {

    let orgs = [];

    for(let i=0;i<=count-1;i++){
        orgs.push(
            {
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
        );
    }

    return orgs;
}

const DataGenerator = (props) => {
    const appContext = useContext(AppContext);
    const [venueCount,setVenueCount] = useState(50);
    const [venueStatus,setVenueStatus] = useState({success : 0, failed : 0});
    const [orgCount,setOrgCount] = useState(50);
    const [orgStatus,setOrgStatus] = useState({success : 0, failed : 0});
    const [index, setIndex] = useState(0);

    const onGenerateVenues = () => {
        const postVenue = async (data) => {
            return await appContext.axiosInstance.post('/venues',data); 
        }
        setVenueStatus({success : 0, failed : 0});
        setIndex(0);
        let successCnt = 0;
        let failedCnt = 0;
        generateVenues(+venueCount).map((venue,index) => {
            try{
                postVenue(venue);
                successCnt++;
            }catch(er){
                failedCnt++;
            }
            setIndex(index+1);
        });
        setVenueStatus({success : successCnt, failed : failedCnt});
    }

    const onGenerateOrgainizers = () => {
        const postOrg = async (data) => {
            return await appContext.axiosInstance.post('/orgainizers',data); 
        }
        setOrgStatus({success : 0, failed : 0});
        setIndex(0);
        let successCnt = 0;
        let failedCnt = 0;
        generateOrgainizers(+orgCount).map((org,index) => {
            try{
                postOrg(org);
                successCnt++;
            }catch(er){
                failedCnt++;
            }
            setIndex(index+1);
        });
        setOrgStatus({success : successCnt, failed : failedCnt});
    }

    return(
        <Card style={{height:'100vh', backgroundColor:'ivory'}}>
            <Head>
                <title>ProServe - Data Generator</title>
                <link rel="icon" href="/favicon.ico" />
            </Head>
            <Panel header="Generate">
                <div className="p-grid p-fluid">
                    <div className="p-col-12 p-md-4">
                        <Card header="Venues">
                            <div className="p-inputgroup">
                                <InputText value={venueCount} onChange={(e) => setVenueCount(e.target.value)} />
                                <Button icon="pi pi-check" label="Generate" onClick={onGenerateVenues} className="p-button-success"/>
                            </div>
                            <div style={{"display":"flex","flexDirection":"row","alignItems":"center","justifyContent":"space-evenly"}}>
                                <Knob value={index} min={0} max={venueCount} /> 
                                <div>
                                      <Button type="button" label="Success">
                                            <Badge value={venueStatus.success} severity="success"/>
                                      </Button>
                                      <hr />
                                      <Button type="button" label="Failed">
                                            <Badge value={venueStatus.failed} severity="danger"/>
                                      </Button>
                                </div>
                            </div>
                        </Card>                        
                    </div>

                    <div className="p-col-12 p-md-4">
                        <Card header="Orgainizers">
                            <div className="p-inputgroup">
                                <InputText value={orgCount} onChange={(e) => setOrgCount(e.target.value)} />
                                <Button icon="pi pi-check" label="Generate" onClick={onGenerateOrgainizers} className="p-button-success"/>
                            </div>
                            <div style={{"display":"flex","flexDirection":"row","alignItems":"center","justifyContent":"space-evenly"}}>
                                <Knob value={index} min={0} max={orgCount} /> 
                                <div>
                                    <Button type="button" label="Success">
                                        <Badge value={orgStatus.success} severity="success"/>
                                    </Button>
                                    <hr />
                                    <Button type="button" label="Failed">
                                        <Badge value={orgStatus.failed} severity="danger"/>
                                    </Button>
                                </div>
                            </div>
                        </Card> 
                    </div>

                    <div className="p-col-12 p-md-4">
                        
                    </div>
                </div>
            </Panel>
        </Card>
    );
}

export default DataGenerator;