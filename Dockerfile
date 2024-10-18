FROM node:latest AS react

WORKDIR /react-app  

COPY package.json  .

COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm","run","start" ] 

# RUN npm run start 

# #
# FROM nginx:latest
# # WORKDIR /usr/share/nginx/html
# COPY --from=react /react-app/build /usr/share/nginx/html

# EXPOSE 80
# ENTRYPOINT [ "nginx","-g","daemon off;" ]
