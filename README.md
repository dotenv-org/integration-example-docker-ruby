Works with [dotenv-vault](https://github.com/dotenv-org/dotenv-vault). Learn more at [dotenv.org](https://dotenv.org).

# integration-example-docker-ruby

<img src="https://raw.githubusercontent.com/dotenv-org/integration-example-docker-ruby/master/docker.png" alt="docker" /><img src="https://raw.githubusercontent.com/dotenv-org/integration-example-docker-ruby/master/dotenv.png" alt="dotenv" /><img src="https://raw.githubusercontent.com/dotenv-org/integration-example-docker-ruby/master/ruby.png" alt="ruby" />

Example Docker + Dotenv integration in Ruby.

## Development

#### Quick use - build & run

```
$ docker build -t dotenv-org/integration-example-docker-ruby . && docker run -e $(cat .env.me) --rm -it -p 8080:8080 --init dotenv-org/integration-example-docker-ruby

# fish shell
$ docker build -t dotenv-org/integration-example-docker-ruby . && docker run -e (cat .env.me) --rm -it -p 8080:8080 --init dotenv-org/integration-example-docker-ruby
```

Visit [http://localhost:8080](http://localhost:8080)

#### Building image

```
$ docker build -t dotenv-org/integration-example-docker-ruby .
```

#### Accessing console

```
$ docker run -e $(cat .env.me) --rm -it -p 8080:8080 --init dotenv-org/integration-example-docker-ruby sh

# echo $DOTENV_ME
# exit
```

## Production

Running in production

```
docker run -e DOTENV_ME=place-your-it-token-here --rm -it -p 8080:8080 --init dotenv-org/integration-example-docker-ruby
```

In production replace the value of DOTENV_ME with your DOTENV_IT token for the particular environment.

