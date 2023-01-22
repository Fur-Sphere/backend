-- CreateTable
CREATE TABLE "Pet" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "about" TEXT,
    "breed" TEXT NOT NULL,
    "dob" TIMESTAMP(3) NOT NULL,
    "profile_image" TEXT,
    "parentId" TEXT NOT NULL,

    CONSTRAINT "Pet_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Pet" ADD CONSTRAINT "Pet_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "Profile"("id") ON DELETE CASCADE ON UPDATE CASCADE;
