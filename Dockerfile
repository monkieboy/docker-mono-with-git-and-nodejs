FROM mono:4.0

RUN apt-get update \
	&& apt-get install -y git \
	&& apt-get install -y nodejs \
	&& apt-get install -y yarn \
	&& rm -rf /var/lib/apt/lists/*
