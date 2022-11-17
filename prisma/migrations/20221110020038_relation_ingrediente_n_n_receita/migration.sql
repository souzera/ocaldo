/*
  Warnings:

  - You are about to drop the column `receitaId` on the `Ingrediente` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Ingrediente" DROP CONSTRAINT "Ingrediente_receitaId_fkey";

-- AlterTable
ALTER TABLE "Ingrediente" DROP COLUMN "receitaId";

-- CreateTable
CREATE TABLE "IngredienteReceita" (
    "id" TEXT NOT NULL,
    "receitaId" TEXT NOT NULL,
    "ingredienteId" TEXT NOT NULL,

    CONSTRAINT "IngredienteReceita_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "IngredienteReceita" ADD CONSTRAINT "IngredienteReceita_receitaId_fkey" FOREIGN KEY ("receitaId") REFERENCES "Receita"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "IngredienteReceita" ADD CONSTRAINT "IngredienteReceita_ingredienteId_fkey" FOREIGN KEY ("ingredienteId") REFERENCES "Ingrediente"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
