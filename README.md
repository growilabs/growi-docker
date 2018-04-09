
growi-docker
===========

[![wercker status](https://app.wercker.com/status/592aa5cebb59c67c4c266ce1f33b6a7e/s/ "wercker status")](https://app.wercker.com/project/byKey/592aa5cebb59c67c4c266ce1f33b6a7e) [![docker-build-automated](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/weseek/growi/) [![docker-pulls](https://img.shields.io/docker/pulls/weseek/growi.svg)](https://hub.docker.com/r/weseek/growi/) [![](https://images.microbadger.com/badges/image/weseek/growi.svg)](https://microbadger.com/images/weseek/growi)

![GROWI-x-docker](https://user-images.githubusercontent.com/1638767/38307565-105956e2-384f-11e8-8534-b1128522d68d.png)


Supported tags and respective Dockerfile links
------------------------------------------------

* [`3.0.3`, `3.0`, `3`, `latest` (Dockerfile)](https://github.com/weseek/growi-docker/blob/v3.0.3/Dockerfile)


What is GROWI?
-------------

GROWI is a team collaboration software and it forked from [crowi](https://github.com/weseek/crowi/crowi)

see: [weseek/growi](https://github.com/weseek/growi)


Requirements
-------------

* MongoDB (>= 3.2)

### Optional Dependencies

* Redis (>= 3)
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

If you use Redis and ElasticSearch, type this:

```bash
docker run -d \
    -e MONGO_URI=mongodb://MONGODB_HOST:MONGODB_PORT/growi \
    -e REDIS_URL=redis://REDIS_HOST:REDIS_PORT/growi \
    -e ELASTICSEARCH_URI=http://ELASTICSEARCH_HOST:ELASTICSEARCH_PORT/growi \
    weseek/growi
```

For more info [here](https://github.com/crowi/crowi/wiki/Install-and-Configuration#env-parameters).


### docker-compose

Using docker-compose is the fastest and the most convenient way to boot GROWI.

see: [weseek/growi-docker-compose](https://github.com/weseek/growi-docker-compose)

Other Documentation
--------------------

* [GROWI Github wiki](https://github.com/weseek/growi/wiki)
  * [Questions and Answers](https://github.com/weseek/growi/wiki/Questions-and-Answers)


Issues
------

If you have any issues or questions about this image, please contact us through  [GitHub issue](https://github.com/weseek/growi-docker/issues).
