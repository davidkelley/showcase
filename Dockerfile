FROM davidkelley/base:ruby

ADD ./ $MOUNT_PATH

RUN bundle install --without test
