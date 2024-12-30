import { Request, Response } from 'express';

export const createUser = async (req: Request, res: Response) => {
    try {
        // TODO: Implement user creation logic
        res.status(201).json({ message: 'User created', data: req.body });
    } catch (error) {
        res.status(500).json({ message: 'Error creating user' });
    }
};

