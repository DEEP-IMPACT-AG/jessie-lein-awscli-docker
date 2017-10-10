FROM clojure:lein-2.7.1

RUN   apt-get update \
   && apt-get install -y jq python-pip libyaml-dev python-dev zip \
   && pip install awscli \
   && VER="17.05.0-ce" \
   && curl -L -o /tmp/docker-$VER.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VER.tgz \
   && tar -xz -C /tmp -f /tmp/docker-$VER.tgz \
   && mv /tmp/docker/* /usr/bin
