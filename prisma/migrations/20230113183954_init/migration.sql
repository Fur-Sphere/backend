-- CreateTable
CREATE TABLE "Waitlist" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "isPetOwner" BOOLEAN NOT NULL DEFAULT false,
    "isTrainer" BOOLEAN NOT NULL DEFAULT false,
    "isVet" BOOLEAN NOT NULL DEFAULT false
);

-- CreateIndex
CREATE UNIQUE INDEX "Waitlist_id_key" ON "Waitlist"("id");
