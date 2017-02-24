FROM mono:4.0

RUN apt-get update \
	&& apt-get install -y git \
	&& apt-get install -y nodejs \
	&& rm -rf /var/lib/apt/lists/*
