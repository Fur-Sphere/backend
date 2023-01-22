-- CreateEnum
CREATE TYPE "ProgressStatus" AS ENUM ('UPCOMING', 'PENDING', 'COMPLETED');

-- CreateTable
CREATE TABLE "Vaccination" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "status" "ProgressStatus" NOT NULL DEFAULT 'UPCOMING',

    CONSTRAINT "Vaccination_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Deworming" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "status" "ProgressStatus" NOT NULL DEFAULT 'UPCOMING',

    CONSTRAINT "Deworming_pkey" PRIMARY KEY ("id")
);
