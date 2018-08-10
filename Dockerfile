FROM node:latest
MAINTAINER yysaki <yysaki@yysaki.com>
RUN git clone https://github.com/yysaki/shikibetsuhyo.git
WORKDIR /shikibetsuhyo
ENV PATH $PATH:./node_modules/.bin
ENV NODE_ENV production
RUN npm install && \
    npm run build
ENV PORT 80
EXPOSE 80
CMD ["npm", "start"]
