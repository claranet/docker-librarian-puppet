FROM ruby:2.4.1

RUN gem install puppet -v 4.10.0
RUN gem install librarian-puppet -v 1.1.1

VOLUME /puppet
WORKDIR /puppet
ENV HOME /puppet

ENTRYPOINT ["librarian-puppet"]

# see http://label-schema.org/rc1/
LABEL org.label-schema.name="librarian-puppet" \
      org.label-schema.version="1.1.1" \
      org.label-schema.description="Librarian-puppet" \
      org.label-schema.vendor="Claranet UK" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/claranet/docker-librarian-puppet" \
      author1="Ray Butcher<ray.butcher@claranet.uk>"
