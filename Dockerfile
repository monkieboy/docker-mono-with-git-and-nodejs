FROM fsharp

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
        && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
        && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
        && apt-get update \
	&& apt-get install software-properties-common \
        && add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe" \
        && apt-get update \
        && apt-get install -y git nodejs yarn build-essential libssl-dev \
        && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash \
        && source ~/.profile \
        && export NVM_DIR="$HOME/.nvm" \
        && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" \
        && nvm install 5.8.0 \
        && nvm use 5.8.0 \
        && apt-get install -y git nodejs yarn
