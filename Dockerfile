# Use Node.js LTS from Amazon ECR Public instead of Docker Hub
FROM public.ecr.aws/docker/library/node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
