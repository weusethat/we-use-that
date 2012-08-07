---
layout: interview
title: Punchfork
subtitle: Endless tasty recipes
tags: search media
---

##Who are you, and what do you do?

I am [Jeff Miller](http://twitter.com/JeffMiller). For the past two years I have been building [Punchfork](http://punchfork.com). I wear all the hats in the business, from coder to designer to biz dev and customer support. Day-to-day, I spend as much time as possible working on product, but more generally I just try to do whatever seems necessary to move Punchfork in the direction of becoming a sustainable business. I also do some [angel investing](https://angel.co/jeffmiller) on the side.

Punchfork is the best and easiest way to discover your next home-cooked meal. We use data from social networks to rank the most popular recipes around the web, and present the results in a beautiful, magazine-like visual layout. Phrased in pitch-deck-speak, it's akin to a machine-driven Pinterest for food. The site has grown to roughly 1 million uniques/month, and we also run the most widely-used [Recipe API](http://punchfork.com/api) out there.

##What is your technology stack?

The Punchfork web app is written in [Python](http://www.python.org/) on top of [Flask](http://flask.pocoo.org/). I am a huge Flask fan and find it really surprising that more startups are not using it. I store everything in [MongoDB](http://www.mongodb.org/) and also use [Redis](http://redis.io/) for some basic real-time data.

The back end of Punchfork (ingredient parsing, web scraping, etc.) is also written in Python, with bash scripts to glue everything together. I use [Gearman](http://gearman.org/) to transmit jobs from the front end to the back end. I decided to use Gearman sight-unseen based on one data point, which is that Instagram is built on it.

The web server itself is just vanilla [Apache](http://httpd.apache.org/) + [mod_wsgi](http://code.google.com/p/modwsgi/). When I had to decide which web server to use, it was two years ago and nginx was still the hotness at the time; its support for WSGI was unclear, so I just went with Apache, which has scaled just fine so far.

The stack pretty much ends there. There is a lot out there I do not use. I don't deploy with Fabric or any other system, just with bash, ssh and [git](http://git-scm.com/). Whenever possible, I skip the fancy shit and use basic, proven tools.

##What software do you use to run your business?

The entire site is hosted on a single extra large [EC2](http://aws.amazon.com/ec2/) instance in US-West. I don't deploy in US-East because it seems to go down twice a year. All of our recipe images and other static content are served via [CloudFront](http://aws.amazon.com/cloudfront/) backed by [S3](http://aws.amazon.com/s3/).

I am super dependent on [Google Apps](http://www.google.com/enterprise/apps/business/). Obviously for Gmail, but I also use Google Docs extensively as a sort of ghettofabulous project management system.

We do all version control with git, but on our own servers. We only use [GitHub](https://github.com/) for [open source](https://github.com/punchfork) stuff like API libraries.

[Pingdom](http://www.pingdom.com/) is a really useful little app for alerting you when your site is down. It's saved me a few times when I fumbled a deployment.

About once a month I send an email blast to a huge [MailChimp](http://mailchimp.com/) list of Punchfork users. We have made plans to get off MailChimp and use something less expensive, though. Transactional emails from our web app are sent with [Postmark](http://postmarkapp.com/).

I recently moved the billing infrastructure for the Punchfork API over to [Stripe](https://stripe.com/), and like most developers, am in love.

##What business software do you most wish existed?

Document signing is in a weirdly antiquated state, although Hellosign has made things a lot better recently.

I wish someone would be able to do for legal (transactional, basic stuff) what Stripe has done for payments.
