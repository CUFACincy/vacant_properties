redis: redis-server $REDIS_CONF
db: postgres -D pg
web: bundle exec thin start -p $PORT
worker: rake resque:work QUEUE=*

