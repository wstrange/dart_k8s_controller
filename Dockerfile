FROM google/dart

WORKDIR /app
ADD pubspec.* /app/

RUN pub get --no-precompile

ADD . /app
#
RUN pub get --offline --no-precompile


ENTRYPOINT ["/app/docker-entrypoint.sh"]