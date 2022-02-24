import { Injectable } from '@nestjs/common';
import { IApp } from './interfaces/IApp';

@Injectable()
export class AppService {
  getHello(): IApp {
    return {version: '0.0.1'};
  }
}
