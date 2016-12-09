run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, [
    'Hello! Heres the docker file: \n
    FROM ruby:2.2.0 RUN mkdir /app
    WORKDIR /app
    ADD . /app
    RUN bundle install
    CMD bundle exec puma config.ru -p $PORT -e production ' ]] }