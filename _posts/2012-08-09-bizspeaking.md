---
layout: interview
title: Bizspeaking
subtitle: The Pinterest for deals.
tags: social-network deal
---

##Who are you, and what do you do?

I am [Jerry Ji](http://jerryji.com/), founder of [Bizspeaking](http://bizspeaking.com/), the Pinterest for deals. I'm the jack-of-all-trades guy doing everything from frontend to backend development to marketing to customer service. Wish me good luck as I begin to venture into mobile development.

Bizspeaking is a social network for deal lovers. It is like Twitter+Reddit focused on deals, or a crowd-sourced Groupon. Another buzz analogy could be the Pinterest for deals. We design the web platform aiming to scale to millions of concurrent users.

##What is your technology stack?

Starting from the OS level, we run [Ubuntu](http://www.ubuntu.com/) VPS at [Linode](http://www.linode.com/). We also used to be [SliceHost](http://www.slicehost.com/) user for a couple of years. I can confirm that both provide rock solid stable server and good customer service. But we decided to switch to Linode after reading a number of benchmark results about its superior performance. The reason we are not on Amazon [EC2](http://aws.amazon.com/ec2/) is that standalone VPS with native disk access provides much better performance, especially for I/O bound activities such as database operations. And Amazon EC2 would actually cost us more at our scale.

Our relational data is stored in [PostgreSQL](http://www.postgresql.org/) database. Why PostgreSQL instead of [MySQL](http://www.mysql.com/)? Quoting [Mike Bayer](http://techspot.zzzeek.org/), creator of [SQLAlchemy](http://www.sqlalchemy.org/), the de facto Python ORM -- "if you're using a relational database, you might as well use the best.". Images are temporarily stored in [MongoDB](http://www.mongodb.org/) (via GridFS) to be accessed from multiple web servers, before they are offloaded to Amazon [S3](http://aws.amazon.com/s3/) for Amazon [CloudFront](http://aws.amazon.com/cloudfront/) CDN.

Application cache is in [Redis](http://redis.io/), which is also used as our backend queue. It has served us well so there is no reason to introduce another "real" MQ.

The main backend programming language of choice is [Python](http://www.python.org/). The web framework we settled on is [Pyramid](http://www.pylonsproject.org/) instead of [Django](https://www.djangoproject.com/). Compare to Django, Pyramid offers more flexibility in picking your favorite routing, ORM, and template subsystem. The ORM we use is obviously SQLAlchemy, and the template engine is [Genshi](http://genshi.edgewall.org/). We are aware that Genshi is supposed to be slower than a few other competing libraries such Mako or Jinjia. But I just don't know how any of the non-XML template guys can _ensure_ their web pages being valid (X)HTML and free from [XSS](http://en.wikipedia.org/wiki/Cross-site_scripting) attack. We hope we have some time to invest in translating our Genshi templates to [Chameleon](http://chameleon.repoze.org/), a more modern XML-based Python template engine that boasts faster speed. Async processing is done in [Celery](http://celeryproject.org/) with Redis as the backend queue. [APScheduler](http://packages.python.org/APScheduler/) takes care of scheduled jobs.

As for HTTP server, we setup [Varnish](https://www.varnish-cache.org/) - [Nginx](http://nginx.org/) - [uWSGI](http://projects.unbit.it/uwsgi/), controled by [Supervisor](http://supervisord.org/).

The main frontend JavaScript library used is JQuery. We choose Zurb [Foundation Framework](http://foundation.zurb.com/) over Twitter Bootstrap](http://twitter.github.com/bootstrap/) for its better adaptive capability. Zurb is moving fast and we still need to catch up with their Foundation 3 release.

We are in the process of developing a mobile app and we will most likely be betting on [Sencha Touch 2](http://www.sencha.com/products/touch/), a cross platform mobile development framework.

##What software do you use to run your business?

As we are more familiar with Python, our SCM of choice is [Mercurial](http://mercurial.selenic.com/) hosted on (BitBucket](https://bitbucket.org/).

After studying [UserVoice](http://www.uservoice.com/) vs [GetSatisfaction](https://getsatisfaction.com/), we landed on UserVoice. Not only because it offers perpetual free plan, but also because it makes it easier for anonymous users to post feedback.

It seems many startups here are using SendGrid, but for us cheapos, we can't be happier paying Amazon [SES](http://aws.amazon.com/ses/) only pennies for sending tens of thousands of emails every month -- where we simply grab the free email templates from [MailChimp](http://mailchimp.com/) and generate our emails dynamically.

For a moment we tried the [CloudFlare](https://www.cloudflare.com/) free plan. While it did seem to reduce the page load time, we finally part with it because the additional layer it introduced in front of our web server makes debugging production issues even harder.

##What business software do you most wish existed?

I wish simple payment service such as [Stripe](https://stripe.com/) were available to companies outside of US.
