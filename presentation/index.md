title: Docker presentation
class: animation-fade
layout: true

<!-- This slide will serve as the base layout for all your slides -->
.bottom-bar[
  {{title}}
]

---

class: impact

# {{title}}
## Introduction to docker

---

# What is Docker?

Docker is a tool designed to make it easier to **create**, **deploy**, and **run** *applications* by using **containers**

--

Containers allow **package up** an application and ship it out as one **package**

--

Developer can *rest* assured that the application will run on any other *Linux* machine

--

Docker is *"like"* a virtual machine. But sharing the same Linux kernel as host

--

**+** performance boost, **-** size of the application

--

Docker is open source. [https://github.com/docker/docker-ce](https://github.com/docker/docker-ce)

---

# Who is Docker for?

Developers and system administrators (DevOps)

--

Developers can focus on writing code without worrying about the system

--

Docker allows them to use thousand of programs already designed to run in a Docker container as a part of their application

---

# Getting started

.col-6[
![Docker lifecycle](./images/lifecycle.jpg)
]
.col-6[
`Dockerfile` example 1
.small.no-margin[
FROM node:8

RUN apt-get update && apt-get -yq upgrade

COPY ./src /app/src

RUN npm install

CMD npm start
]

`Dockerfile` example 2
.small.no-margin[
FROM java:9-jdk

EXPOSE 8080

COPY ./target/*.war /application/app.war

CMD java -jar /application/app.war
]
]

---

# Dockerfile basic commands

*FROM*: Base image to use

*RUN*: Execute instruction in layer

*EXPOSE*: Port/protocol to listen in container (documentation)

*ENV*: Define environment variables

*COPY*: Copy files when image is created

*CMD*: Command as default in container start

*WORKDIR*, *USER*, *ENTRYPOINT*, *ADD*, *LABEL*, *VOLUME* ...

---

# Docker basic usage

```bash
$ docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
9bb5a5d4561a: Pull complete
Digest: sha256:f5233545e43561214ca4891fd1157e1c3c563316ed8e237750d59bde73361e77
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly
...
```

```bash
$ docker run -d -p 8080:80 nginx
```

---

# Docker basic usage

```bash
$ docker run --rm -it ubuntu:17.04 bash
Unable to find image 'ubuntu:17.04' locally
17.04: Pulling from library/ubuntu
c2ca09a1934b: Pull complete
d6c3619d2153: Pull complete
0efe07335a04: Pull complete
6b1bb01b3a3b: Pull complete
43a98c187399: Pull complete
Digest: sha256:5d41c289942008211c2964bca72800f5c9d5ea5aa4057528da617fb36463d4ab
Status: Downloaded newer image for ubuntu:17.04
root@5812c9945247:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@5812c9945247:/#
```

```bash
$ docker build -t <image name> <path/to/Dockerfile>
```

---

# Docker Hub

Register at [https://hub.docker.com/](https://hub.docker.com/) and you could upload images

````bash
$ docker login
  Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
  Username: username
  Password: ********
  Login Succeeded
$ docker tag image username/repository:tag
$ docker push username/repository:tag
$ docker run username/repository:tag
````

---

# Docker compose
