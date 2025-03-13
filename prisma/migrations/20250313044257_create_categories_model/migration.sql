/*
  Warnings:

  - You are about to drop the column `category` on the `bank_statements` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `bank_statements` DROP COLUMN `category`,
    ADD COLUMN `categoryId` INTEGER NULL;

-- CreateTable
CREATE TABLE `categories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `deletedAt` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `bank_statements` ADD CONSTRAINT `bank_statements_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `categories`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
