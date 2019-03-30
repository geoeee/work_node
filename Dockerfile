FROM golang:alpine

LABEL version="0.1"
LABEL Maintainer="Joey Zhang"
ENV GOPATH /root/go
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main/" > /etc/apk/repositories
RUN apk update && \
    apk upgrade && \
    apk add --no-cache openssh-client vim git curl screen net-tools bash apache2-utils gcc g++ && \
    rm -rf /var/cache/apk/* 

# install golang tools
# RUN go get -u -v github.com/golang/dep/cmd/dep && \
#     go get -u -v github.com/go-swagger/go-swagger/cmd/swagger

WORKDIR /root 

# # install oh my zsh
# RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# # change theme of omz
# RUN sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"ys\"/g' .zshrc