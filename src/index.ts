import express from "express";
import { UserRouter, StudentRouter, HODRouter } from './controller';

const app = express();
const port = process.env.PORT || 3002;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/user', UserRouter);
app.use('/student', StudentRouter);
app.use('/hod', HODRouter);

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});


