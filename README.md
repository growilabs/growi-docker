
growi-docker
===========

[![wercker status](https://app.wercker.com/status/592aa5cebb59c67c4c266ce1f33b6a7e/s/ "wercker status")](https://app.wercker.com/project/byKey/592aa5cebb59c67c4c266ce1f33b6a7e) [![docker-build-automated](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/weseek/growi/) [![docker-pulls](https://img.shields.io/docker/pulls/weseek/growi.svg)](https://hub.docker.com/r/weseek/growi/) [![](https://images.microbadger.com/badges/image/weseek/growi.svg)](https://microbadger.com/images/weseek/growi)

![GROWI-x-docker](https://user-images.githubusercontent.com/1638767/38307565-105956e2-384f-11e8-8534-b1128522d68d.png)


Supported tags and respective Dockerfile links
------------------------------------------------

* [`3.1.14`, `3.1`, `3`, `latest` (Dockerfile)](https://github.com/weseek/growi-docker/blob/v3.1.14/Dockerfile)
* [`3.0.13`, `3.0` (Dockerfile)](https://github.com/weseek/growi-docker/blob/v3.0.13/Dockerfile)


What is GROWI?
-------------

GROWI is a team collaboration software and it forked from [crowi](https://github.com/weseek/crowi/crowi)

see: [weseek/growi](https://github.com/weseek/growi)


Requirements
-------------

* MongoDB (>= 3.2)

### Optional Dependencies

* ElasticSearch (>= 5.1)
  * Japanese (kuromoji) Analysis plugin
  * ICU Analysis Plugin


Usage
-----

```bash
docker run -d \
    -e MONGO_URI=mongodb://MONGODB_HOST:MONGODB_PORT/growi \
    weseek/growi
```

and go to `http://localhost:3000/` .

If you use ElasticSearch, type this:

```bash
docker run -d \
    -e MONGO_URI=mongodb://MONGODB_HOST:MONGODB_PORT/growi \
    -e ELASTICSEARCH_URI=http://ELASTICSEARCH_HOST:ELASTICSEARCH_PORT/growi \
    weseek/growi
```


### docker-compose

Using docker-compose is the fastest and the most convenient way to boot GROWI.

see: [weseek/growi-docker-compose](https://github.com/weseek/growi-docker-compose)


Environment Variables
-------------------

* **Required**
    * MONGO_URI: URI to connect to MongoDB.
* **Option**
    * NODE_ENV: `production` OR `development`.
    * PORT: Server port. default: `3000`
    * ELASTICSEARCH_URI: URI to connect to Elasticearch.
    * REDIS_URI: URI to connect to Redis (use it as a session store instead of MongoDB).
    * PASSWORD_SEED: A password seed used by password hash generator.
    * SECRET_TOKEN: A secret key for verifying the integrity of signed cookies.
    * SESSION_NAME: The name of the session ID cookie to set in the response by Express. default: `connect.sid`
    * FILE_UPLOAD: `aws` (default), `local`, `none`
* **Option to integrate with external systems**
    * HACKMD_URI: URI to connect to [HackMD(CodiMD)](https://hackmd.io/) server.
        * **This server must load the GROWI agent. [Here's how to prepare it](https://docs.growi.org/management-cookbook/integrate-with-hackmd).**
    * PLANTUML_URI: URI to connect to [PlantUML](http://plantuml.com/) server.
    * BLOCKDIAG_URI: URI to connect to [blockdiag](http://http://blockdiag.com/) server.
* **Option (Overwritable in admin page)**
    * OAUTH_GOOGLE_CLIENT_ID: Google API client id for OAuth login
    * OAUTH_GOOGLE_CLIENT_SECRET: Google API client secret for OAuth login
    * OAUTH_GITHUB_CLIENT_ID: GitHub API client id for OAuth login
    * OAUTH_GITHUB_CLIENT_SECRET: GitHub API client secret for OAuth login


Other Documentation
--------------------

* [GROWI Github wiki](https://github.com/weseek/growi/wiki)
  * [Questions and Answers](https://github.com/weseek/growi/wiki/Questions-and-Answers)


Issues
------

If you have any issues or questions about this image, please contact us through  [GitHub issue](https://github.com/weseek/growi-docker/issues).

