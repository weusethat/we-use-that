---
layout: interview
title: Punchfork
subtitle: Endless tasty recipes
tags: 
---

##Who are you, and what do you do?

I'm [Jeff Miller](http://twitter.com/JeffMiller). For the past two years I've been building [Punchfork](http://punchfork.com). I wear all the hats in the business, from coder to designer to biz dev and customer support. Day-to-day, I spend as much time as possible working on product, but more generally I just try to do whatever seems necessary to move Punchfork in the direction of becoming a sustainable business. I also do some angel investing on the side.

Punchfork is the best and easiest way to discover your next home-cooked meal. We use data from social networks to rank the most popular recipes around the web, and present the results in a beautiful, magazine-like visual layout. Phrased in pitch-deck-speak, it's akin to a machine-driven Pinterest for food. The site has grown to roughly 1 million uniques/month, and we also run the most widely-used Recipe API out there.

##What is your technology stack?

The Punchfork web app is written in Python on top of Flask. I'm a huge Flask fan and find it really surprising that more startups aren't using it. I store everything in MongoDB and also use Redis for some basic real-time data.

The back end of Punchfork (ingredient parsing, web scraping, etc.) is also written in Python, with bash scripts to glue everything together. I use Gearman to transmit jobs from the front end to the back end. I decided to use Gearman sight-unseen based on one data point, which is that Instagram is built on it.

The entire site is hosted on a single xlarge EC2 instance in US-West. I don't deploy in US-East because it seems to go down twice a year. The web server itself is just vanilla Apache + mod_wsgi. When I had to decide which web server to use, it was two years ago and nginx was still the hotness at the time; its support for WSGI was unclear, so I just went with Apache, which has scaled just fine so far.

All of our recipe images and other static content are served via CloudFront backed by S3.

The stack pretty much ends there. There's a lot out there I don't use. I don't deploy with Fabric or any other system, just with bash, ssh and git. Whenever possible, I skip the fancy shit and use basic, proven tools.

##What software do you use to run your business?

I'm super dependent on Google Apps. Obviously for Gmail, but I also use Google Docs extensively as a sort of ghettofabulous project management system.

We do all version control with git, but on our own servers. We only use GitHub for open source stuff like API libraries.

Pingdom is a really useful little app for alerting you when your site is down. It's saved me a few times when I fumbled a deployment.

About once a month I send an email blast to a huge MailChimp list of Punchfork users. We've made plans to get off MailChimp and use something less expensive, though. Transactional emails from our web app are sent with Postmark.

I recently moved the billing infrastructure for the Punchfork API over to Stripe, and like most developers, am in love.

##What business software do you most wish existed?

Document signing is in a weirdly antiquated state, although Hellosign has made things a lot better recently.

I wish someone would be able to do for legal (transactional, basic stuff) what Stripe has done for payments.
