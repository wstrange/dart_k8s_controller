FROM google/dart-runtime:2.0-dev


# If you want to dynamically add dart files (e.g. via a configmap), use something like this:
#WORKDIR /app
#ADD pubspec.* /app/
#
#RUN pub get --no-precompile
#
#ADD . /app
##
#RUN pub get --offline --no-precompile
#
#
#ENTRYPOINT ["/app/docker-entrypoint.sh"]