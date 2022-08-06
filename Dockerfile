FROM quay.io/lyfe00011/md:beta
RUN git clone https://github.com/Devtokade/wa-bot /root/LyFE/
RUN npm install supervisor -g
WORKDIR /root/LyFE/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
