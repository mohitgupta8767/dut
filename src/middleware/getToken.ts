import { Request, Response, NextFunction } from 'express';

export const readTokenMW = (req: Request, res: Response, next: NextFunction) => {
    const token = req.headers;
    console.log(token);
    res.locals = {
        userType: 'student'
    };
    next();
}