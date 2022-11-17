/*
  Warnings:

  - Added the required column `quantidade` to the `IngredienteReceita` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "IngredienteReceita" ADD COLUMN     "quantidade" TEXT NOT NULL;
