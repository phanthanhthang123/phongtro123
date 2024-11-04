import authRouter from './auth';
import inserRouter from './insert'
import categoryRouter from './category'
import postRouter from './post'
import priceRouter from './price'
import areaRouter from './area'

const initRouters = (app)=>{
    app.use('/api/v1/auth',authRouter);
    app.use('/api/v1/insert',inserRouter);
    app.use('/api/v1/category',categoryRouter);
    app.use('/api/v1/post',postRouter);
    app.use('/api/v1/price',priceRouter);
    app.use('/api/v1/area',areaRouter);
    
    return app.use('/', (req,res)=>{
        res.send('Server on ...');
        console.log('server on...');
    })
}

export default initRouters;