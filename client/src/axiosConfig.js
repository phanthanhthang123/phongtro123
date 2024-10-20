import axios from "axios"

const instance = axios.create({
    baseURL: process.env.REACT_APP_SERVER_URL
})

//moi khi gui req len server gui luon token
instance.interceptors.request.use(function (config) {
    const token = localStorage.getItem('persist:auth');
    // console.log(token);
    // Do something before request is sent
    return config;
  }, function (error) {
    console.log(error)
    // Do something with request error
    return Promise.reject(error);
  });

export default instance;