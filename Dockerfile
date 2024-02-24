# syntax=docker/dockerfile:1

# Start from this image. If it's NOT in your machine -> downloads it
FROM node:18-alpine

# Move to a path and copy all
WORKDIR /app
COPY . .

# Execute yarn command
RUN yarn install --production

# Once a container from this image is started -> first command to run
CMD ["node", "src/index.js"]


EXPOSE 3000