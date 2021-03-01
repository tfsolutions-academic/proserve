import React, { useState } from 'react';
import axiosInstance from './axiosSettings';
import graphQlBroker from './graphQlBroker';

const AppContext = React.createContext({});

export const AppContextProvider = AppContext.Provider;

export const AppContextValue = {
    axiosInstance : axiosInstance,
    graphQlBroker : graphQlBroker,
    isAuthenticated : async ()=>{
        try{
          const result = await axiosInstance.get('/auth-check');
          console.log('Auth Result', result, result?.success);
          return (result?.success);
        }catch(err){
          return false;
        }
    },
    getCurrentUser :async () =>{
      let userInfo = localStorage.getItem('userInfo') ? JSON.parse(localStorage.getItem('userInfo')) : {};
      if (Object.keys(userInfo).length == 0){
        const fetch = async () => {return await axiosInstance.get('/users/me');}
        userInfo = await fetch();
        localStorage.setItem('userInfo', JSON.stringify(userInfo));
      }
      return userInfo;
    }
};

export default AppContext;