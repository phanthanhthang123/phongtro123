import db from '../models'

import {v4} from 'uuid'
//cac thu vien ma hoa, bam pass
import bcrypt from 'bcrypt' //bam pass
import jwt from 'jsonwebtoken' 

require('dotenv').config();

const hashPassword = password => bcrypt.hashSync(password,bcrypt.genSaltSync(12));

export const registerService = ({phone,password,name})=> new Promise(async (resolve, reject) => {
    try {
        //check tai khoan co ton tai hay khong
        const response = await db.User.findOrCreate({
            where : {phone : phone},
            defaults : {
                phone : phone,
                name : name,
                password : hashPassword(password),
                id : v4()
            }
        })
        //response[0] : data response[1] = true or false , true : da dc tao tk, false : tk da ton tai => da co token
        const token =  response[1]  && jwt.sign({id : response[0].id, phone: response[0].phone},process.env.SECRET_KEY,{expiresIn:'2d'});

        resolve({
            err : token ? 0 : 2,
            msg : token ? 'Register is successfully !' : 'Phone number hash been aldready used!',
            token : token || null
        })
        
    } catch (error) {
        reject(error);
    }
})

export const loginService = ({phone,password})=> new Promise(async (resolve, reject) => {
    try {
        //check tai khoan co ton tai hay khong
        const response = await db.User.findOne({
            where : {phone : phone},
            raw : true
        })
        //findOne -> neu where dung tra ve thong tin , nguoc lai tra ve null
        const isCorrectPassord = response && bcrypt.compareSync(password, response.password);
            
        //response[0] = data;  response[1] = true or false : true -> da dc tao tk, false -> tk da ton tai => da co token
        const token =  isCorrectPassord  && jwt.sign({id : response.id, phone: response.phone},process.env.SECRET_KEY,{expiresIn:'2d'});

        resolve({
            err : token ? 0 : 2,
            msg : token ? 'Login is successfully !' : response ? 'Password is wrong!' : 'Phone number not found!',
            token : token || null
        })
        
    } catch (error) {
        reject(error);
    }
})