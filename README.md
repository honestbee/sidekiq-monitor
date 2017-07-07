# README

## Preparations

### Install Ruby

At the time of writing, we're using `2.3.3`

To manage different ruby versions you can use tools
like [rbenv](http://rbenv.org/) or [rvm](https://rvm.io/)

After installing (for example with **rbenv**):

    $ rbenv install 2.3.3
    $ rbenv rehash

### Bundler

We're using `1.14.5`. Please always check the last line of `Gemfile.lock`.

    # install bundler
    $ gem install bundler --version=1.14.5

    # Check the last line of Gemfile.lock
    $ tail -n 1 Gemfile.lock

    1.14.5

## Project

### Setup environment variables

1. Ask other guys to get a sample file or
2. Checkout sample file on `.env.sample`
3. Add `.env` file in root of project
4. Add whatever you want, e.g:
```
REDIS_URL=YOUR_REDIS_URL
```
References: [dont-env](https://github.com/bkeepers/dotenv)

### Start server

- `$ rackup config.ru`
- Open browser with default port 9292 `localhost:9292`
- Get statistic:
```
# GET localhost:9292/stats
{
  "sidekiq": {
    "processed": 12345,
    "failed": 56,
    "busy": 25,
    "enqueued": 178,
    "scheduled": 0,
    "retries": 0,
    "default_latency": 12
  },
  "redis": {
    "connected_clients": "120",
    "uptime_in_days": "35",
    "used_memory_human": "602.31M",
    "used_memory_peak_human": "1.01G"
  }
}
```

