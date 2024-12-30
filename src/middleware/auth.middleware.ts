import { Request, Response, NextFunction } from 'express';
import { Role } from '@prisma/client';

export const authMiddleware = (allowedRoles: Role[]) => {
    return (req: Request, res: Response, next: NextFunction) => {
        // Get user from request (assuming it was set by readTokenMW)
        const user = (req as any).user;

        if (!user) {
            return res.status(401).json({ message: 'Unauthorized' });
        }

        if (!allowedRoles.includes(user.role)) {
            return res.status(403).json({ message: 'Forbidden' });
        }

        next();
    };
}; 