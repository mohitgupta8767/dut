import { Request, Response, NextFunction } from 'express';

export const checkIfUserIsHOD = (req: Request, res: Response, next: NextFunction) => {
    try {
        // TODO: Implement proper HOD validation
        // For now, let's pass through all requests
        next();
    } catch (error) {
        res.status(401).json({ message: 'Unauthorized' });
    }
};