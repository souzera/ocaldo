-- CreateTable
CREATE TABLE "Receita" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "modoPreparo" TEXT NOT NULL,
    "videoUrl" TEXT NOT NULL,

    CONSTRAINT "Receita_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ingrediente" (
    "id" TEXT NOT NULL,
    "receitaId" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "imgUrl" TEXT NOT NULL,

    CONSTRAINT "Ingrediente_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Ingrediente" ADD CONSTRAINT "Ingrediente_receitaId_fkey" FOREIGN KEY ("receitaId") REFERENCES "Receita"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
