FROM ruby:2.7.0
ENV NODE_VERSION=8.x
RUN set -xe; \
	# Node.js repo
	curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -; \
	echo "deb https://deb.nodesource.com/node_${NODE_VERSION} jessie main" | tee /etc/apt/sources.list.d/nodesource.list; \
	echo "deb-src https://deb.nodesource.com/node_${NODE_VERSION} jessie main" | tee -a /etc/apt/sources.list.d/nodesource.list; \
	apt-get update >/dev/null; \
	apt-get -y --no-install-recommends install >/dev/null \
		nodejs \
	;\
	apt-get clean; rm -rf /var/lib/apt/lists/*;
RUN apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN mkdir /Photosite05
WORKDIR /Photosite05
COPY Gemfile /Photosite05/Gemfile
COPY Gemfile.lock /Photosite05/Gemfile.lock
RUN bundle install
COPY . /Photosite05

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
