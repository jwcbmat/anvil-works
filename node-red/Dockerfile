FROM nodered/node-red:latest

RUN npm install --no-audit --no-fund --omit=dev \
    @flowfuse/node-red-dashboard@~1.33.0 \
    node-red-contrib-s7@~3.1.3 \
    node-red-node-mysql@~3.0.3
