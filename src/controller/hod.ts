import express from 'express';
import { addTeacherSalary, getHodDetail } from '../service';
import { checkIfUserIsHOD } from '../middleware';

const router = express.Router();

router.get('/detail', checkIfUserIsHOD, getHodDetail);
router.post('/add-teachers-salary', checkIfUserIsHOD, addTeacherSalary);

export default router;