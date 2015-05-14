FROM ruby:2.2.2

RUN gem install middleman

ADD . /home/app/fsr
WORKDIR /home/app/fsr
RUN bundle install

ENV PORT 3000
EXPOSE 3000

CMD middleman build
CMD middleman server -p PORT
