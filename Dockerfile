# alpine is nice, but should match server
FROM debian

RUN apt update
RUN apt install -y python3 python3-pip python3-psutil \
    ruby-full git \
    neovim

RUN gem install rails

# setup ruby on rails
# this is doen on host, the code doesnt need duped

# better to use web rather than --api, so i can use web later, and pass whatever

# rails new rhubarb
# cd rhubarb; mv -t .. *; mv -t ..  .*; cd ..; rmdir rhubarb
# bin/rails server -b 0.0.0.0
# RUN /mnt/rhubarb/bin/bundle install

# neovim stuff

EXPOSE 3000

WORKDIR /mnt/rhubarb
CMD [ "tail", "-F", "/dev/null" ]