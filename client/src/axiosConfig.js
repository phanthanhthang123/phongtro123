import axios from "axios"

const instance = axios.create({
    baseURL: process.env.REACT_APP_SERVER_URL
})

//moi khi gui req len server gui luon token
instance.interceptors.request.use(function (config) {
  // Do something before request is sent
  //gan token vao header
  let token = window.localStorage.getItem('persist:auth') && JSON.parse(window.localStorage.getItem('persist:auth'))?.token?.slice(1,-1)
  config.headers = {
    Authorization : token ?  `Bearer ${token}` : null
  }
  
  return config;
}, function (error) {
  // Do something with request error
  return Promise.reject(error);
});

// Add a response interceptor
instance.interceptors.response.use(function (response) {
  // Any status code that lie within the range of 2xx cause this function to trigger
  // Do something with response data
  //refresh token
  return response;
}, function (error) {
  // Any status codes that falls outside the range of 2xx cause this function to trigger
  // Do something with response error
  return Promise.reject(error);
});
export default instance;