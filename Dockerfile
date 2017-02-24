FROM fsharp

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
        && apt-get update \
	&& apt-get install -y git \
	&& apt-get install -y nodejs \
	&& npm install -y -g yarn \
	&& rm -rf /var/lib/apt/lists/*
