Docker AdonisJs
===============

Unofficial Docker image for AdonisJs, a Node.js web framework.

## What is AdonisJs?

According to the [official site](https://adonisjs.com/):

AdonisJs is a Node.js MVC framework that runs on all major operating systems. It offers a stable ecosystem to write server-side web applications so you can focus on business needs over finalizing which package to choose or not.

AdonisJs favors developer joy with a consistent and expressive API to build full-stack web applications or micro API servers.

There are no hard prerequisites for using AdonisJs, but having a conventional understanding of JavaScript, Async programming and Node.js is very helpful.

## Supported tags and respective `Dockerfile` links

- [`4.1-node.12.16.2`, `4.1-node.12.16`, `4.1-node.12`, `4.1-node.lts`, `4.1`, `4`, `current`, `latest`]()
- [`4.1-node.12.16.2-alpine`, `4.1-node.12.16-alpine`, `4.1-node.12-alpine`, `4.1-node.lts-alpine`, `4.1-alpine`, `4-alpine`, `current-alpine`]()

## How to use this image

## Image variants

### ```lucasrgoes/adonis:<version>```

This is the default image, based on Debian releases. If unsure which to use this should be your choice.

### ```lucasrgoes/adonis:<version>-alpine```

This image is based on the [Alpine Linux](https://hub.docker.com/_/alpine) project. Alpine Linux is a Linux distribution built around musl libc and BusyBox.

The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications.

## License

This project is licensed under the [MIT License](https://github.com/LucasRGoes/docker-adonisjs/blob/master/LICENSE). Linux packages, Node.js and AdonisJs each have their own licenses that should be accessed to verify if there are any usage limitations.
