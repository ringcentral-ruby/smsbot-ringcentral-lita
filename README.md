SMSbot using RingCentral and Lita
=================================

This project contains an example SMSbot using [RingCentral](https://ringcentral.com)'s [SMS APIs](https://developers.ringcentral.com).

## Installation

### Heroku Setup

If you already have your RingCentral API Keys and SMS number created and available, you can use Heroku One-Button Deployment.

**REMEMBER, you must have all the prerequisites to configure the app properly**

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

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