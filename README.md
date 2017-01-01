SMSbot using RingCentral and Lita
=================================

This project contains an example SMSbot using [RingCentral](https://ringcentral.com)'s [SMS APIs](https://developers.ringcentral.com).

## Prerequisites

* Basic awareness of [Lita](https://www.lita.io/)
* Access to an active RingCentral Account with access to the [Developer Portal](https://developers.ringcentral.com)
* SMS feature enabled in your RingCentral account and turned on for one or more extensions (this will be the `SMS number created` in the Heroku Setup steps below. Read more about [RingCentral Business SMS](http://success.ringcentral.com/articles/RC_Knowledge_Article/RingCentral-Business-SMS-Frequently-Asked-Questions).
* RingCentral Platform - Applications must have the `SMS` API Permission included. **NOTE** RingCentral developer sandbox accounts require handlers with routes that work with the Sandbox SMS prefix such as [`lita-inspirebot`][repo-lita-inspirebot-link].
* Ruby version 2.2.2 or greater
* **NOTE** If you have **HIPAA Compliance** enabled on your RingCentral account, you will be unable to use this feature since SMS is disabled in HIPAA Compliant RingCentral Accounts.

## Installation

### Heroku Setup

If you already have your RingCentral API Keys and SMS number created and available, you can use [Heroku One-Button Deployment](https://devcenter.heroku.com/articles/heroku-button).

Notes:

1. **REMEMBER, you must have all the prerequisites to configure the app properly**
2. The demo defaults to paid Heroku `Hobby` and `redistogo:micro` tiers. This can be changed to free tiers by forking the repo and updating [`app.json`](app.json) to set the tiers to `Free` and `redistogo.nano`.
3. Zendesk usage is optional and you can leave the default values in place if you do not have a Zendesk account

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

The settings are located in the [`app.json`](app.json) file. If you wish to change any settings such as the Dyno type or [Redis To Go](https://elements.heroku.com/addons/redistogo) plan, please fork the repo and deploy from your fork.

### Manual Setup

For a manual set up, perform the following steps:

1. install and run Redis, e.g. using `$ redis-server`
2. clone the repo
3. create the `.env` file and run `lita` as follows:

```bash
$ git clone https://github.com/grokify/smsbot-ringcentral-lita
$ cd smsbot-ringcentral-lita
$ cp .env.tmpl .env
$ vi .env
$ bundle install
$ lita
```

Information on installing Redis is available on the [Lita User Guide under Manual Installation](https://docs.lita.io/getting-started/installation/#manual-installation).

## Usage

### Quickstart

After starting the service, text the following [`lita-inspirebot`][repo-lita-inspirebot-link] interactions to your configured SMS number:

1. `quote authors`
2. `quote jobs`
3. `@lita 8ball`

### Handlers Information

This demo apps loads 3 handlers:

Lita configuration is loaded in [lita_config.rb](lita_config.rb) and [lita_dotenv](.lita_dotenv) enables loading of many configuration types via the environment variables depending upon if you're using `.env` to load environment variables or if you are using Heroku environment variables.

By default, this example includes the following handlers:

| Handler | Sample command | Notes |
|---------|----------------|-------|
| [`lita-inspirebot`][repo-lita-inspirebot-link] | `quote jobs` | supports RingCentral sandbox accounts |
| [`lita-eightball`](https://github.com/webdestroya/lita-eightball) | `@lita 8ball` | requires Ringcentral production account |
| [`lita-zendesk`](https://github.com/grokify/lita-zendesk) | `@lita zd tickets` | requires RingCentral production account |

**Note:**

1. Zendesk support is a demo. Currently, there is no authorization required which may be fine for open source projects but enterprise projects with private systems will want to add authz which could be hard coded or based on a directory service like ActiveDirectory, Okta, LDAP, etc.

#### Changing Handlers

To change the handlers that are loaded, edit the `Gemfile` as normal per [Lita](https://lita.io).

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

 [repo-lita-inspirebot-link]: https://github.com/grokify/lita-inspirebot