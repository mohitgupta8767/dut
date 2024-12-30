import { Request, Response, NextFunction } from 'express';

export const addTeacherSalary = async (req: Request, res: Response, next: NextFunction): Promise<void> => {
    try {
        res.json({ message: 'Teacher salary added', data: req.body });
    } catch (error) {
        next(error);
    }
};

export const getHodDetail = async (req: Request, res: Response, next: NextFunction): Promise<void> => {
    console.log("getHodDetails", req.query, res.json);
    try {
        const email = req.query.email as string;
        if (!email) {
            res.status(400).json({ message: 'Email is required' });
            return;
        }

        const hodData = {
            id: 1,
            email: email,
            role: 'HOD',
            department: 'Computer Science',
            name: 'Test HOD'
        };

        res.json({ message: 'HOD details retrieved', data: hodData });
    } catch (error) {
        next(error);
    }
};