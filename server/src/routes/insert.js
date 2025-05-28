import express from 'express';
import * as insertController from '../controllers/insert'

const router = express.Router();

router.post('/all',insertController.insert);
router.post('/priceAndArea', insertController.insertPriceAndArea);

export default router;