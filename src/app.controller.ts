import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';
import { IApp } from './interfaces/IApp';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): IApp {
    return this.appService.getHello();
  }
}
