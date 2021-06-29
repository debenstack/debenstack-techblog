FROM public.ecr.aws/x2q3v6u1/debenstack-techblog-base:latest

ENV NODE_ENV production

RUN mkdir /app
COPY . /app
WORKDIR /app

ENTRYPOINT [ "/bin/bash", "./startup.sh" ]