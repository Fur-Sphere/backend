-- AlterTable
ALTER TABLE "User" ADD COLUMN     "isTrainer" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "isVet" BOOLEAN NOT NULL DEFAULT false;