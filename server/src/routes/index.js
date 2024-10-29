import authRouter from './auth';
import inserRouter from './insert'

const initRouters = (app)=>{
    app.use('/api/v1/auth',authRouter);
    app.use('/api/v1/insert',inserRouter);

    return app.use('/', (req,res)=>{
        res.send('Server on ...');
        console.log('server on...');
    })
}

export default initRouters;