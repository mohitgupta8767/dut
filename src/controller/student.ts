import express from 'express';
import { applyLeaveApplication } from '../service';

const router = express.Router();

router.post('/apply-leave', applyLeaveApplication);

export default router;