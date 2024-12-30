import { Request, Response } from 'express';

export const applyLeaveApplication = async (req: Request, res: Response) => {
    res.json(req.body);
}