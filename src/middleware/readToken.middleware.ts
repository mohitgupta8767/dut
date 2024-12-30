import { Request, Response, NextFunction } from 'express';

export const readTokenMW = (req: Request, res: Response, next: NextFunction): void => {
    try {
        // TODO: Implement token reading logic
        // For now, just pass through
        next();
    } catch (error) {
        next(error);
    }
}; 