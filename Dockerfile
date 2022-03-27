FROM gaoxin0207/mysharelist:latest
MAINTAINER gaoxin0207 <gaoxin0207@gmail.com>

ENV PORT 33001
EXPOSE 33001

RUN chmod -R 777 /sharelist/cache 

ADD deploy.sh /deploy.sh

RUN chmod +x /deploy.sh 

CMD /deploy.sh
