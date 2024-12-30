-- CreateTable
CREATE TABLE "User" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "fname" TEXT NOT NULL,
    "lname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "userType" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Students" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "studentId" INTEGER NOT NULL,
    "standard" INTEGER NOT NULL,
    "age" INTEGER NOT NULL,
    "teacherId" INTEGER NOT NULL,
    CONSTRAINT "Students_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "User" ("uuid") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Teachers" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "teacherId" INTEGER NOT NULL,
    "salary" INTEGER NOT NULL,
    CONSTRAINT "Teachers_teacherId_fkey" FOREIGN KEY ("teacherId") REFERENCES "User" ("uuid") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Hod" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "hodId" INTEGER NOT NULL,
    "departmentName" INTEGER NOT NULL,
    CONSTRAINT "Hod_hodId_fkey" FOREIGN KEY ("hodId") REFERENCES "User" ("uuid") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Subjects" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "standard" INTEGER NOT NULL,
    "subject" TEXT NOT NULL,
    "subjectTeacher" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "exams" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "standard" INTEGER NOT NULL,
    "subjectId" INTEGER NOT NULL,
    "student" TEXT NOT NULL,
    "semester" INTEGER NOT NULL,
    "marsks" INTEGER NOT NULL,
    CONSTRAINT "exams_subjectId_fkey" FOREIGN KEY ("subjectId") REFERENCES "Subjects" ("uuid") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "User_uuid_key" ON "User"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "Students_uuid_key" ON "Students"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "Teachers_uuid_key" ON "Teachers"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "Hod_uuid_key" ON "Hod"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "Subjects_uuid_key" ON "Subjects"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "exams_uuid_key" ON "exams"("uuid");
