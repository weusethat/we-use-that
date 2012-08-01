---
layout: interview
title: Pulse
subtitle: A beautiful application that makes reading news fun and engaging
tags: mobile media
---

##Who are you, and what do you do?

I am [Ankit Gupta](https://github.com/gankit/) and I'm one of the founders of [Pulse](http://www.pulse.me/). Pulse allows you to bring all your favorite content: newspapers, blogs, social media, etcetera together in one place so that you can stay on top of what's going on. We have apps for [iPhone](http://itunes.apple.com/us/app/pulse-news-for-iphone/id377594176), [iPad](http://itunes.apple.com/us/app/pulse-news-for-ipad/id371088673) and [Android](https://play.google.com/store/apps/details?id=com.alphonso.pulse) and we're always adding new platforms. We have over 15 million users on Pulse and we are always growing the team. Right now, we're looking for designers and business development people check out our [Jobs page](http://www.pulse.me/jobs/#/working-at-pulse) for more info.

##What is your technology stack?

All of our web serving happens on [Google App Engine](https://developers.google.com/appengine/), we love it. App Engine gives us versioning, deployments, memcached and more, for free. We're one of their [Premier Accounts](https://developers.google.com/appengine/docs/premier/) and they have really good customer service so we're happy with that as well.

Most of our data crunching happens on [AWS](http://aws.amazon.com/). We use [Hive](http://hive.apache.org/) for all of our analytics. We store data in [S3](http://aws.amazon.com/s3/). We recently started using [Redis](http://redis.io/) for storing a lot of in-memory database objects. Our web properties on App Engine run on [Django](https://www.djangoproject.com/) and that ties into Google's NoSQL database, [App Engine Datastore](https://developers.google.com/appengine/docs/python/datastore/overview). We use [Backbone.js](http://backbonejs.org/) on top of Django for working with data between client and server.

Of course, [iOS](https://developer.apple.com/devcenter/ios/index.action) and [Android](http://developer.android.com/sdk/index.html) have their own SDKs. We use a lot of third party libraries on mobile, for iOS we use [ASI](http://allseeing-i.com/ASIHTTPRequest/) for most of our networking, which is amazing. We are slowly moving towards [AFNetworking](http://afnetworking.org/Documentation/) which is better maintained. The other big library we use, and I think everyone uses it, is [MBProgressHUD](https://github.com/jdg/MBProgressHUD) which is for progress indicators and other stuff, it's pretty cool.

##What software do you use to run your business?

We use [Github](https://github.com/) for all of our code, which is amazing. We use it not just for hosted Git but also for [Issues](https://github.com/dashboard/issues). All of our bug tracking and reporting is on Github. I wish Issues was better, it doesn't do a good job when you have a lot of bugs :).

The whole company is on [HipChat](https://www.hipchat.com/) all the time which makes it easy to communicate with people whether they're in or out of the office. Hipchat has a mobile application but we all hate it, it needs a strong internet connection, takes a lot of time to load up and doesn't work all the time.

We started using [Trello](https://trello.com/) for our product management as a high-level abstraction and then we use [Pivotal Tracker](http://www.pivotaltracker.com/) for the iOS team specifically. In fact, a lot of our teams use different software for their product management. Our web team uses [Evernote](http://evernote.com/) to make lists and keep everyone on the same page.

[AppFigures](http://www.appfigures.com/) helps us keep track of what's going on with our iOS and Android apps. For analytics we use [Google Analytics](http://www.google.com/analytics/), we were using Flurry but replaced it with our own stuff. We also use [Highrise](http://highrisehq.com/) for CRM, [Google Apps](http://www.google.com/enterprise/apps/business/), [PBworks](http://pbworks.com/) for our internal wiki, [Dropbox](https://www.dropbox.com/) for file sharing and I'm sure there are more.

##What business software do you most wish existed?

A mobile app competitor to Hipchat would be huge. I think something a lot better for bug tracking would be awesome. Existing bug tracking software like JIRA is huge and it requires a lot of investment to stay on top of it. GitHub is good but it doesn't have a lot of basic features and isn't very scalable. A simple, lightweight bug tracking system built on top of GitHub that has notifications and other features would be great.

