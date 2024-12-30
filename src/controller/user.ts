import { Router, Request, Response, NextFunction } from 'express';

const router = Router();

router.get('/', (req: Request, res: Response, next: NextFunction): void => {
    try {
        res.json({ message: 'User routes' });
    } catch (error) {
        next(error);
    }
});

export const UserRouter = router; 