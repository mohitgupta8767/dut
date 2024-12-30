import express from 'express';
import { createUser } from '../service';

const router = express.Router();

router.post('/create-user', createUser);

export default router;