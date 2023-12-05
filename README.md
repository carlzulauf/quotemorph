# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Dokku

```
dokku apps:create quotemorph
dokku domains:add quotemorph quotes.mrks.io
dokku config:set quotemorph RAILS_MASTER_KEY=5ca281d0a8c497546ae93037c485d656
```

Deploy app, then enable letsencrypt

```
dokku letsencrypt:set quotemorph email carl@linkleaf.com
dokku letsencrypt:enable quotemorph
```
