FROM node:20-alpine AS build
WORKDIR /web
COPY . .
RUN npm i -g pnpm && pnpm i && pnpm build

FROM nginx:alpine
COPY --from=build /web/dist /usr/share/nginx/html
EXPOSE 80
