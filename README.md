SMSbot using RingCentral and Lita
=================================

This project contains an example SMSbot using [RingCentral](https://ringcentral.com)'s [SMS APIs](https://developers.ringcentral.com).

## Installation

### Heroku Setup

If you already have your RingCentral API Keys and SMS number created and available, you can use [Heroku One-Button Deployment](https://devcenter.heroku.com/articles/heroku-button).

**REMEMBER, you must have all the prerequisites to configure the app properly**

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

The settings are located in the [`app.json`](app.json) file. If you wish to change any settings such as the Dyno type or [Redis To Go](https://elements.heroku.com/addons/redistogo) plan, please fork the repo and deploy from your fork.

### Manual Setup

For a manual set up, clone the repo and create the `.env` file to run:

```bash
$ git clone https://github.com/grokify/smsbot-ringcentral-lita
$ cd smsbot-ringcentral-lita
$ cp .env.tmpl .env
$ vi .env
$ bundle install
$ lita
```

## Usage

To change the handlers that are loaded, edit the `Gemfile` as normal.

Lita configuration is loaded in `lita_config.rb` `and [`lita_dotenv`](). `lita_dotenv` enables loading of many configuration types via the environment (`.env` file or system / Heroku env).

By default, this example includes the following handlers:

| handler | notes |
|---------|-------|
| [`lita-eightball`](https://github.com/webdestroya/lita-eightball) | |
| [`lita-inspirebot`](https://github.com/grokify/lita-inspirebot) | |
| [`lita-zendesk`](https://github.com/grokify/lita-zendesk) | * some environment variables are necessary to make the Zendesk handler work.
* These being with `LITA_ZENDESK_` and have all been set to optional in the Heroku `app.json` for the purposes of this demo. |

### Sample interaction

| SMS request | SMS Response |
| `quote jobs` | Get a random quote from Steve Jobs |
| `@rcbot 8ball` | Get a random 8ball response |
| `@rcbot zd tickets` | Get a ticket count for Zendesk |

## Links

RingCentral Developer Program

* https://developers.ringcentral.com/

## Contributing

1. Fork it ( http://github.com/grokify/smsbot-ringcentral-lita/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

SMSbot using RingCentral and Lita is available under the MIT-style license. See [LICENSE.txt](LICENSE.txt) for details.

SMSbot using RingCentral and Lita &copy; 2016 by John Wang