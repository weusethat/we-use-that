---
layout: interview
title: cisimple
subtitle: The fastest, easiest way to automate builds and tests for your mobile app
tags: mobile build test automation continuous integration
---

##Who are you, and what do you do?

[cisimple](https://www.cisimple.com) is [Kevin Rohling](https://github.com/krohling/) (I'm the nerd) and [John Frost](https://github.com/frost_john) (the Aussie/Biz Dev guy) and we're making mobile developers more productive.  cisimple makes automating builds and tests for your mobile application a piece of cake.  A high quality piece of delicious cake that your users will enjoy because automated tests caught all of the bugs, and nobody wants bugs in their cake (or their mobile app).

"But setting up Continuous Integration is such a pain!" you say?  Yeah, we know, and that's why we exist.  We make it simple (just like our name, go figure).  Seriously simple.  If you don't believe me just check out our [demo video](http://www.youtube.com/embed/Nwoyfrs9niQ).  We integrate with Github so all you have to do is pick the repo that contains your mobile app (and we do per-branch builds by the way).  Then tweak a few parameters to your liking and your off to the races.  

Everytime you commit code we rebuild your app, run your tests and if you so choose automatically deploy it to your beta testers using [TestFlight](http://testflightapp.com).  That simple.



##What is your technology stack?

Our web magic uses [Bootstrap](http://twitter.github.com/bootstrap/) for the front end with plenty of custom jQuery.  I can't say enough good things about Bootstrap.  I'm debating sending those guys some chocolates, or whatever it is guys send other guys to say "Good Job" (beer?).  On the backend we're running Rails and hosted on [Heroku](http://www.heroku.com) (excellent customer service btw) with a Postgres database.  We also use plenty of Amazon services like EC2 and S3 for things like data storage and some web service hosting.

Obviously [Github](http://www.github.com) is where our source code lives and we use plenty of 3rd party libraries.  Some of the ones that have been the most useful: [Gibbon](https://github.com/amro/gibbon) for syncing our mailing lists with [Mailchimp](http://www.mailchimp.com), [Pygments](http://rubygems.org/gems/pygments.rb) and [Redcarpet](http://rubygems.org/gems/redcarpet/) for doing Markdown rendering, [MixPanel](http://www.mixpanel.com) for capturing Analytics.

Development setup is as follows: [Rspec](http://rspec.info/), [FactoryGirl](https://github.com/thoughtbot/factory_girl/), and [FakeWeb](http://rubygems.org/gems/fakeweb) are great gems for unit testing, [Spork](https://github.com/guard/guard-spork) makes it all run faster, and I'm using [TextMate](http://macromates.com/) as my editor.

##What software do you use to run your business?

We use [Mailchimp](http://www.mailchimp.com) for managing email campaigns, which works fairly well.  I strongly recommend integrating with their API to keep user information up to date.  It will make segmenting your list of users sooo much easier if you have that data available in Mailchimp.  Big time saver for us.

If you're hosted on Heroku you've got to get the [Nezumi](http://nezumiapp.com/) app.  It lets you scale up/down and remotely administer your web app, all from your phone.

[MixPanel](http://www.mixpanel.com) is a great analytics platform.  We debated between them and KissMetrics but finally settled on MixPanel because they have a free "getting started" plan.  It obviously has big limitations but has worked great for us so far and you can't beat that price.

We use [Trello](http://www.trello.com) for tracking our engineering/biz dev backlogs.  I have yet to experiment w/ their mobile apps but I'm stoked that they exist.  Another "list" app I like a lot is [Asana](http://www.asana.com).  [Pivotal](http://www.pivotaltracker.com) is also an obvious tool that fits this need but it's a bit heavy weight for what we need right now.

I use a combination of [IFTTT](http://ifttt.com/) and [Boxcar](http://boxcar.io/) to stay on top of what's happening on Twitter.  I setup alerts that pine me any time someone mentions our name or Continuous Integration.  It's a bit chattery but is a great way to keep updated on conversations that affect our business.

A few more goodies: [Dropbox](http://www.dropbox.com) is a must have, [Evernote](http://www.evernote) is the ultimate note taking app, [Google Analytics](http://www.google.com/analytics/) for simple analytics (still recommend getting MixPanel), [Highrise](http://highrisehq.com/) for CRM and [CardMunch](http://www.cardmunch.com) for cranking through all those business cards (cuz you're such a hustler!).

##What business software do you most wish existed?

A better alternative to Mailchimp.  I like that they have an in-browser editor for editing emails but I'd switch to something with a better user experience for managing campaigns in a second.  Also, a better API for sending transactional emails would be a huge plus.

