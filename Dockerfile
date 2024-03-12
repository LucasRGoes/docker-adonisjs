# vim:set ft=dockerfile:
#
# Docker AdonisJs
# ---------------
# Container based on
#	LucasRGoes/docker-adonisjs: https://github.com/LucasRGoes/docker-adonisjs
#
#   AdonisJs is a Node.js MVC framework that runs on all major operating
# systems. It offers a stable ecosystem to write server-side web applications
# so you can focus on business needs over finalizing which package to choose or
# not.
#
FROM node:21.7.1-bookworm

MAINTAINER lucas.rd.goes@gmail.com

WORKDIR /app

# change ownership of the "/app" dir to be used by the node user
# install "dumb-init" to handle a container's child process problem
RUN set -eux; \
  chown node:node /app; \
 	apt-get update && apt-get install -y --no-install-recommends \
 	dumb-init; \
 	apt-get clean && rm -rf /var/lib/apt/lists/*

# rewrites npm global root directory
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# install "adonis-cli" to handle apps built using the AdonisJs framework
RUN set -eux; \
	npm i -g \
	@adonisjs/cli@4.0.13

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["node", "server.js"]

USER node
