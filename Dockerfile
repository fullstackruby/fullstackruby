FROM ruby:2.2.2

RUN gem install middleman

ADD . /opt/app/fullstackruby
WORKDIR /opt/app/fullstackruby
RUN bundle install

ENV PORT 3000
EXPOSE 3000

CMD middleman build
CMD middleman server -p PORT
