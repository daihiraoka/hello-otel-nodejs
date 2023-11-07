FROM 20.9.0-slim
COPY package.json .
RUN npm install
RUN mkdir public
COPY public/ public/
COPY server.js .
COPY tracer.js .
EXPOSE 8080
CMD [ "node", "--require", "./tracer.js", "server.js" ]
