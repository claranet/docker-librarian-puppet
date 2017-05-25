FROM ruby:2.4.1

# see http://label-schema.org/rc1/
LABEL org.label-schema.name="librarian-puppet" \
      org.label-schema.version="0.0.1" \
      org.label-schema.description="Librarian-puppet" \
      org.label-schema.vendor="Claranet UK" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/claranet/docker-librarian-puppet" \
      author1="Ray Butcher<ray.butcher@claranet.uk>"

RUN gem install puppet -v 4.10.0
RUN gem install librarian-puppet -v 2.2.3

VOLUME /puppet
WORKDIR /puppet
ENV HOME /puppet

ENTRYPOINT ["librarian-puppet"]
