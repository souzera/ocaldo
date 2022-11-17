import { PrismaClient } from '@prisma/client'

import Fastify from 'fastify'
import cors from '@fastify/cors'

const fastify = Fastify({
    logger: true
})

const prisma = new PrismaClient()

fastify.register(cors, {origin:true})

fastify.listen({port:3000})

fastify.get('/', () => {
    return {'hello': 'world'}
})

fastify.get('/ingredientes', () =>{
    return prisma.ingrediente.findMany();
})

fastify.get('/receitas', () => {
    return prisma.receita.findMany();
})