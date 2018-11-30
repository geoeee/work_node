FROM golang:1.11.2-stretch

RUN apt update && \
    apt upgrade -y && \
    apt install -y openssh-client vim git curl screen net-tools zsh

# install golang tools
RUN go get -u -v github.com/golang/dep/cmd/dep && \
    go get -u -v github.com/go-swagger/go-swagger/cmd/swagger

WORKDIR /root 

# install oh my zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# change theme of omz
RUN sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"ys\"/g' .zshrc