import authRouter from './auth';
import inserRouter from './insert'
import categoryRouter from './category'

const initRouters = (app)=>{
    app.use('/api/v1/auth',authRouter);
    app.use('/api/v1/insert',inserRouter);
    app.use('/api/v1/category',categoryRouter);


    return app.use('/', (req,res)=>{
        res.send('Server on ...');
        console.log('server on...');
    })
}

export default initRouters;