FROM node:14.17.0-alpine

# Create app directory
WORKDIR /var/www/nestjs-server

COPY package.json package-lock.json ./

RUN npm ci

COPY .eslintrc.js nest-cli.json tsconfig.json tsconfig.build.json ./

COPY .env.docker /var/www/nestjs-server/.env

# Add storage folder to the container (If you want to add other folder contents to the container)
# ADD storage /var/www/backend/storage

# Entrypoint command - Replace `"yarn"` with `"npm", "run"` if you are using NPM as your package manager.
# You can update this to run other NodeJS apps
CMD [ "npm run", "start:dev", "--preserveWatchOutput" ]