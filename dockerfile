FROM node:14-alpine

RUN apk add --no-cache curl && \
    curl -fsSL https://deno.land/x/install/install.sh | sh

WORKDIR /app
COPY . .

EXPOSE 8085

CMD ["deno", "run", "--allow-net", "index.ts"]

