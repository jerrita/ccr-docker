FROM node:alpine

RUN npm install -g @musistudio/claude-code-router \
    && npm cache clean --force \
    && rm -rf /root/.npm /tmp/*

CMD ["ccr", "start"]
