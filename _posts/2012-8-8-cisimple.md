---
layout: interview
title: cisimple
subtitle: The fastest, easiest way to automate builds and tests for your mobile app
tags: mobile build test automation continuous integration
---

##Who are you, and what do you do?

[cisimple](https://www.cisimple.com) is [Kevin Rohling](https://github.com/krohling/) (I'm the nerd) and [John Frost](https://github.com/frostjohn) (the Aussie/Biz Dev guy) and we're making mobile developers more productive.  cisimple makes automating builds and tests for your mobile application a piece of cake.  A high quality piece of delicious cake that your users will enjoy because automated tests caught all of the bugs, and nobody wants bugs in their cake (or their mobile app).

"But setting up Continuous Integration is such a pain!" you say?  Yeah, we know, and that's why we exist.  We make it simple (just like our name, go figure).  Seriously simple.  If you don't believe me just check out our [demo video](http://www.youtube.com/embed/Nwoyfrs9niQ).  We integrate with Github so all you have to do is pick the repo where your mobile app lives (and we do per-branch builds by the way).  Then tweak a few parameters to your liking and your off to the races.

Everytime you commit code we rebuild your app, run your tests and if you so choose auto-magically deploy it to your beta testers using [TestFlight](http://testflightapp.com).  That simple.  So simple your ceo could do it.



##What is your technology stack?

Our web magic uses [Bootstrap](http://twitter.github.com/bootstrap/) for the front end with plenty of custom jQuery.  We can't say enough good things about Bootstrap.  In fact, we're debating sending those guys some chocolates, or whatever it is guys send other guys to say "Good Job" (beer?).  On the backend we're running Rails and a Postgres database.  We've also got a Reddis database in there but we only use it for supporting Resque, which handles some of the longer running processes on the web side.

Our web app uses plenty of 3rd party libraries.  Some of the ones that have been the most useful: [Gibbon](https://github.com/amro/gibbon) for syncing our mailing lists with [Mailchimp](http://www.mailchimp.com), [Pygments](http://rubygems.org/gems/pygments.rb) and [Redcarpet](http://rubygems.org/gems/redcarpet/) for Markdown rendering, [MixPanel gem](https://github.com/zevarito/mixpanel) for capturing Analytics.

Development setup is as follows: [Rspec](http://rspec.info/), [FactoryGirl](https://github.com/thoughtbot/factory_girl/), and [FakeWeb](http://rubygems.org/gems/fakeweb) are great gems for unit testing, [Spork](https://github.com/guard/guard-spork) makes it all run faster, and we're using [TextMate](http://macromates.com/) as our text editor.

##What software do you use to run your business?

Our web application is hosted on [Heroku](http://www.heroku.com) (excellent customer service btw) and obviously [Github](http://www.github.com) is where our source code lives.  If you're hosted on Heroku by the way, you've got to get the [Nezumi](http://nezumiapp.com/) app.  It lets you scale up/down and remotely administer your web app, all from your iOS device.

We use plenty of Amazon services like EC2 and S3 for things like data storage and hosting some of our web services.

We also use [Mailchimp](http://www.mailchimp.com) for managing email campaigns, which works fairly well.  I strongly recommend integrating with their API to keep user information up to date.  It will make segmenting your list of users sooo much easier if you have that data available in Mailchimp.  Big time saver for us.

[MixPanel](http://www.mixpanel.com) is a great analytics platform.  We debated between them and KissMetrics but finally settled on MixPanel because they have a free "getting started" plan.  It obviously has big limitations but has worked great for us so far and you can't beat that price.  Their UI is super easy to use, you'll have your funnels set up in no time!

We use [Trello](http://www.trello.com) for tracking our engineering/biz dev backlogs.  We have yet to experiment w/ their mobile apps but we're stoked that they exist.  Another "list" app we like a lot is [Asana](http://www.asana.com).  [Pivotal](http://www.pivotaltracker.com) is also an obvious tool that fits this need but it's a bit heavy weight for what we need right now.

We use a combination of [IFTTT](http://ifttt.com/) and [Boxcar](http://boxcar.io/) to stay on top of what's happening on Twitter.  We setup alerts that ping us anytime someone mentions our company or Continuous Integration.  It's a bit chattery but is a great way to keep updated on conversations that affect our business.

[Dropbox](http://www.dropbox.com) is the perfect tool for sharing files with your team.  We've got folders for engineering, design, customer development, etc.

[Evernote](http://www.evernote) is the ultimate note taking app.  We love that you can take notes on your computer and then read them later on a mobile device.

[Google Analytics](http://www.google.com/analytics/) works well for capturing simple analytics but we still recommend getting MixPanel.  It just has way more advanced features.

For someone who's never used a CRM app before [Highrise](http://highrisehq.com/) has been really easy to learn and get up to speed on fast.  I love their Dropbox feature (no relation to the other Dropbox) which works really well once you get in the habit of bcc'ing Highrise on all of your emails (still working on that…).

[CardMunch](http://www.cardmunch.com) is really handy for cranking through all those business cards (cuz you're such a hustler!).  Just take a photo of the business card using their mobile app and within minutes the card info is added to your Contacts. Magic!  One feature request I have is a way to integrate it with Highrise.  I found a hack where you can export from your Contacts into vCard format and then upload to Highrise but it's kind of a pain.

[Stripe](http://www.stripe) is a no-brainer for online payments and they're taking over the web one credit card at a time.  Their documentation is easy to follow and the actually integration is the easiest payments integration I've come across.  Once we turn on our paid services we'll be processing payments using these guys.

##What business software do you most wish existed?

A better alternative to Mailchimp.  We like that they have an in-browser editor for editing emails but would switch to something with a better user experience for managing campaigns in a second.  Also, a better API for sending transactional emails would be a huge plus.

