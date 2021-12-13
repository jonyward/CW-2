FROM node:12.22.7
EXPOSE 80
COPY server.js .
CMD node server.js

