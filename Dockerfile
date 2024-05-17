FROM node:21 as build
WORKDIR /app
# COPY source codes
COPY . /app
# Remove unless file in docker image
RUN rm -rf /app/.git /app/.github /app/Dockerfile /app/README.md
# Develop start
RUN yarn install

# run!
EXPOSE 3000
CMD ["yarn", "dev"]
