
# stage 1 

FROM node:latest as builder


WORKDIR /app

COPY package.json ./

RUN npm i

COPY index.js ./

RUN npm run build



# stage 2 

FROM alpine:latest

RUN apk update && apk upgrade && apk add --update nodejs npm

WORKDIR /app

ARG PORT

ENV PORT=$PORT

COPY --from=builder /app/package.json ./

RUN npm i 

COPY --from=builder /app/index.min.js ./

CMD ["node", "index.min.js", "--port=$PORT" ]

EXPOSE 3030











