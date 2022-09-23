# building the /build folder which is everything the production app needs
FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# actually running the production code
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

