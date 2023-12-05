FROM ruby:2.3
COPY . /build
RUN cd /build && \
    gem build wayback_machine_downloader.gemspec && \
    gem install wayback_machine_downloader-2.4.0.gem && \
    bundle install
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]
