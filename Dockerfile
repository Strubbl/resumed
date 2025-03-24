FROM node:23

USER node
WORKDIR /resumed
RUN \
    mkdir share && \
    npm install resumed jsonresume-theme-even jsonresume-theme-paper-plus-plus jsonresume-theme-onepage-plus jsonresume-theme-flat jsonresume-theme-rickosborne jsonresume-theme-stackoverflow jsonresume-theme-macchiato jsonresume-theme-kendall jsonresume-theme-elegant jsonresume-theme-ace jsonresume-theme-cv jsonresume-theme-lucide jsonresume-theme-mantra jsonresume-theme-minyma jsonresume-theme-standard-resume jsonresume-theme-actual jsonresume-theme-straightforward jsonresume-theme-orbit jsonresume-theme-ks jsonresume-theme-caffeine

VOLUME /resumed/share
ENTRYPOINT ["/resumed/node_modules/resumed/bin/resumed.js"]
CMD ["/bin/bash"]
