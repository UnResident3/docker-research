import { NestFactory } from '@nestjs/core';
import { NestFastifyApplication, FastifyAdapter} from '@nestjs/platform-fastify';
import { async } from 'rxjs/internal/scheduler/async';

async function bootstrap() {
    const application = await NestFactory.create<NestFastifyApplication>()
}
bootstrap();