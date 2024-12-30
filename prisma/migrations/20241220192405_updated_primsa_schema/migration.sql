/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Hod" (
    "uuid" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "hodId" INTEGER NOT NULL,
    "departmentName" TEXT NOT NULL,
    CONSTRAINT "Hod_hodId_fkey" FOREIGN KEY ("hodId") REFERENCES "User" ("uuid") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Hod" ("departmentName", "hodId", "uuid") SELECT "departmentName", "hodId", "uuid" FROM "Hod";
DROP TABLE "Hod";
ALTER TABLE "new_Hod" RENAME TO "Hod";
CREATE UNIQUE INDEX "Hod_uuid_key" ON "Hod"("uuid");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
