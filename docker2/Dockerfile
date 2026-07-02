FROM node:20
WORKDIR /app
COPY . .
RUN npm clean-install
RUN npm run build
EXPOSE 80
CMD npm run preview
