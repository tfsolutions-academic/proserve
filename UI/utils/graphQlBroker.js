import { fake } from 'faker';
import axiosInstance from './axiosSettings';

const GraphQLBroker = async (queryString) => {
    let response = {
        isSuccess : true,
        data : null,
        error : null
    };

    try{
        const result = await axiosInstance.post(
                            '/graphql',
                            { query : queryString },
                            { headers: { 'Content-Type' : 'application/json' } }
                        );
        console.log("GraphQL Result", result);
        response.data = result;
    }catch(err){
        console.log("GraphQL Error", err);
        response.isSuccess = false;
        response.error = err;
    }

    return response;
}

export default GraphQLBroker;