---
layout: interview
title: Beeminder
subtitle: Put your money where your mouth is. Get things done.
tags: saas quantified-self
---

## Who are you, and what do you do?

We are [Daniel Reeves](http://dreev.es ) and [Bethany Soule](http://bethaknee.com ), co-founders of [Beeminder](http://beeminder.com ).
We make people more awesome via the threat of taking their money. 
Specifically, we plot your progress on a "yellow brick road" to your goal.
You enter your credit card and agree to get charged if you ever have a data point off track.
It's mostly for lifehacking quantified-self data nerds, but we're gradually getting more mainstream.
We're over 5,000 users now, with 11% paying, making us just barely ramen profitable.

## What is your technology stack?

It's [turtles all the way down, brah](http://en.wikipedia.org/wiki/File:River_terrapin.jpg ). We can say that because half of our turtles wear bras.  
Apparently Bethany is slap-happy. We won't say that in the actual post.

The stack is Ubuntu / Nginx / Passenger / Mongo / Rails on a [Linode](http://linode.com ) instance.
We use [Resque](https://github.com/defunkt/resque/ ) for asynchronous and delayed jobs, so we've got [Redis](http://redis.io/ ) in there as well.
Our graphs have been generated in Mathematica, but we've recently ported to Python's [Matplotlib](http://matplotlib.sourceforge.net/ ) for now.
We're thinking [d3.js](http://d3js.org ) is the future.
Our current graph generator, BeeBrain, is a ridiculous frankenstein with its own API that involves -- we kid you not -- a PHP script that our Ruby code makes GET requests to which get queued up by a Perl script, which then calls Mathematica-cum-Python to make the graph images and compute other statistics about the goals.

[Airbrake](http://airbrake.io ), [New Relic](http://newrelic.com ), and [Pingdom](http://pingdom.com ) are serving a somewhat overlapping niche for us.
New Relic is local to us here in Cloudy Portland, and it seems like they aim to own that entire section of our needs, so we're excited to have them nearby and see how they continue to kill it. 
What can you do? We're suckers for data and pretty visualizations!

We deploy using [Capistrano](https://github.com/capistrano ) and our code lives in a private [Github](https://github.com/ ) repository.
There's an ongoing debate as to whether we should make all of Beeminder open source.

## What software do you use to run your business?

For internal communication and planning we use our own instance of [Etherpad](https://github.com/Pita/etherpad-lite/ ) for pretty much everything from to-do lists to web page copy to writing this post right now.
(Truly realtime collaborative editing can sometimes go slightly awry; see, for example, the turtles paragraph above.)
Our blog is hosted on [WPEngine](http://wpengine.com ), but we even wrote a plugin so we can [write in Etherpad and publish to WordPress](http://bethaknee.com/projects/expost "We love Etherpad. Not even in a platonic way. We want to make sweet sweet love to it. And we were hating the WordPress editor for so many reasons, not least of which that it does not make collaboration on blog posts as sublime as we expect from all text editing experiences since we first set eyes on Etherpad. So we wrote a plugin to jam Etherpad up into WordPress’s hoohah. Throw in some nice markdown as well and you have sexy times in WordPress’s backend."). 
We just love Etherpad that much.

We're also pretty big fans of post-it note technology and have been trying out [Trello](http://trello.com ), but don't have all of us fully on board with that. 
We communicate with each other with [Partychat](http://partychapp.appspot.com/ ).
It's nice in that it's just google chat so non-nerds can pop in as needed, unlike, say, IRC-based solutions.

We farm out heavy lifting to various other services where we can. 
For payments, [Stripe](http://stripe.com ), of course.
We want to have Stripe's babies. 
(We know, [get in line](http://www.kalzumeus.com/2012/08/06/stripe-and-ab-testing-made-me-a-small-fortune/ ); we've totally been using them since their "DevPayments" days though!)
We also give users the option of [Chirpify](http://chirpify.com ) for payments.
Pay by tweeting! You can actually authorize us to make the tweet that effects the payment so that you not only get charged for derailing from your yellow brick road, we can publicly humiliate you as well.

A big part of Beeminder -- unless you've hooked up a fancy gadget to automate the data entry -- is our nosy robot that asks you every day for your number.
You can reply by email or SMS, for which we use [Mailgun](http://www.mailgun.com/ ) and [Twilio](http://twilio.com ), respectively.
We highly recommend Mailgun over Sendgrid or Postmark or others.
It does everything those services do and much more -- particularly if you want to parse incoming email and handle it in your app.
Mailgun's API makes that a joy.

Our solution to CRM and talking to the customers is thin.
We mostly just use Gmail.
[Streak](http://www.streak.com/ ) helps out a bit -- we especially like their email snippets. 
We have a lot of semi-automated life-cycle and even event-driven emails where we still use a human to review and hit send.
We do have custom email snoozing, based on [an idea from Lifehacker](http://lifehacker.com/5825634/how-to-add-a-snooze-button-to-gmail ), implemented using [Google Apps Script](https://developers.google.com/apps-script/ ).
If you don't want to go down that rabbit hole, we also recommend [Followup.cc](http://followup.cc ).
Some of our support takes place on [our user feedback forum](http://uservoice.beeminder.com ), which is thanks to [UserVoice](http://uservoice.com ).

One other necessary ingredient for doing customer support in email is [Rapportive](http://rapportive.com ).
Rapportive has a wonderful API for making custom widgets.
It was very easy to make a custom Rapportive widget so that when a customer emails us we see a summary in the sidebar about all their beeminding (and whether they actually pay us).

Finally, one of the most important things we use to run our business is this [amazing app called Beeminder](http:/beeminder.com ). 
We track our hours spent on task, our blog posts, and it keeps us hard committed (to the tune of $1000) to making [user-visible improvements](https://www.beeminder.com/meta/uvi ) to the product every single day.
It's no joke that Beeminder wouldn't exist right now if it weren't for our meta Beeminder goals forcing us to stick it out during the dips in the rollercoaster ride that is startupland.


## What business software do you most wish existed?

We loved [Punchfork](http://weusethat.com/punchfork/ )'s answer to this.
Payments : Stripe :: Legal Crap : [please somebody make this!].
It looks like [Docracy](http://www.docracy.com ) is halfway there.
Now we need an API on top of this to automate the lawyers away altogether.

Also could someone fix email please? The problem is that people keep sending it to us.
