# Grounds & Grounds

Grounds & Grounds is mobile based application for the two-way delivery of them tasty-ass coffee grounds.

## Development

Follow the yellow brick road to...get your local development environment working!

### Prerequisites

#### PostgreSQL

This may be installed via brew, and users can be configured locally to work with your environment. The default users are given as a guide, and can easily be re-configured.

#### Bundle

```
$ bundle
```
### Starting the Server

```
$ unicorn
```

This defaults to `localhost:8080`.

## Testing

Test may be run independently via **rspec**, or automatically with **guard**.

```
$ rspec spec
```

```
$ guard
```

## Deployment

To deploy you must have **heroku** configured locally and configued to point to the correct url / remote. You must also have access to this remote repository.

```
$ git push heroku master
```

Once deployed, the application should be viewable @ <http://grounds-and-grounds.herokuapp.com>.