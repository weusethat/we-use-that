---
layout: interview
title: PagerDuty
subtitle: Alarm aggregation and dispatching service for system administrators and support teams
tags: yc saas alerting
---

##Who are you, and what do you do?

My name is Alex Solomon and I'm the CEO and cofounder of [PagerDuty](http://www.pagerduty.com/). At PagerDuty, we build an alerting and on call management system for IT Ops. PagerDuty plugs into your monitoring system tools and when something breaks, like your servers or website going down, we wake you up in the middle of the night so you can fix it. We do a lot around on-call management like schedules for your team and escalations in case alerts are missed.

We have over 1,000 paying users and we're doubling that every 6 months. Our users range from small startups all the way to Fortune 500 companies, users include companies like Intuit, Microsoft, Heroku, EngineYard, Adobe as well as cool startups like Pinterest, Instagram and Square.

We are [hiring](http://www.pagerduty.com/jobs) for multiple positions in engineering and customer support.

##What is your technology stack?

We power our web app with [Ruby on Rails](http://rubyonrails.org/) and [MySQL](http://www.mysql.com/). The PagerDuty service is a notifications dispatch system powered by [Scala](http://www.scala-lang.org/) and [Cassandra](http://cassandra.apache.org/). The notifications dispatch system alerts people via phone calls and SMS's. It's distributed across multiple different data centers such that if one datacenter goes down, our app still functions. This is due to the nature of Cassandra, it's a multi-node database and it can survive one or even two node outages and continue to function.

We also use [Capistrano](https://github.com/capistrano/capistrano/) for deployments and [Jenkins](http://jenkins-ci.org/) as a continuous integration server.

We use [Monit](http://mmonit.com/monit/), a process monitor which kills processes that grow too large in terms of memory and restarts processes.

##What software do you use to run your business?

Our hosting providers are [Amazon](http://aws.amazon.com/) and [Linode](http://www.linode.com/). Our primary stack is up on Amazon on US-West. We used to be on East but then switched to West because a lot of our customers are on US-East so we would end up having correlated failures with our customers if East went down. We also have a full redundant, hot backup stack of PagerDuty running on Linode. In the case that all of US-West goes down we can go an emergency swap. We're on multiple different availability zones on West, but as we all know Amazon sometimes goes down an entire region at a time so hence the redundancy on Linode. Right now we run Cassandra on the primary (Amazon) and we replicate to the secondary (Linode), so if the primary provider actually goes down altogether, then we can do an emergency flip, which would actually cause a few minutes of downtime. The future plan is to run one Cassandra cluster across multiple providers.

We use [HipChat](https://www.hipchat.com/) for team communications. Most of our team is based in San Francisco but we have one person who is remote and other people who work from home occasionally. It  avoids the constant interruptions you get from people working in the same office, they can just use the chat instead of bugging someone in person, we're really happy with it.

We also use [Skype](http://www.skype.com/), it's for video chat and also a good backup for HipChat because HipChat sometimes goes down when Amazon goes down. Those are times when communication is especially important for us because we can have problems or load issues when Amazon goes down. A lot of our customers are on Amazon, so  we send a lot of pages when it
s down. Skype is a great for those types of situations.

We use [Acunote](http://www.acunote.com/), we're an agile shop so we do sprints and scrums and it's a great tool for that. It keeps track of all the tasks that are happening in your sprint and the burn down, making sure that people complete their tasks.

We use a few different telephony services. One of our main providers is [Twilio](http://www.twilio.com/), we've used them since the start of the company, and they are absolutely great, low cost, very developer friendly. We also use [Tropo](https://www.tropo.com/), it's the backup for Twilio because Twilio does not have 100% uptime. It's great for voice calls and as a backup.

We also use a few different SMS gateways, Twilio is one of them as well as another gateway called [UpsideSMS](http://www.upsidewireless.com/) and then there's another one called [eSendex](http://www.esendex.us/) based in Europe. Since PagerDuty is fully international we need to use some gateways to send international SMSs and others for the domestics.

In terms of email providers, we use [Mailgun](http://www.mailgun.com/) as our primary and we also have a backup called [AuthSMTP](http://www.authsmtp.com/). Sometimes Mailgun has load issues so we have to swap over to our backup. We use and pay for [Google Apps](http://www.google.com/enterprise/apps/business/).

We use [Braintree](https://www.braintreepayments.com/) as our payments gateway and we've ended up writing our own billing system. We're very happy with Braintree, they work great but we had to do our own billing system because the way we charge our customers can be a little complicated. An example is that we end up charging overages if a customer goes over their alert quota for international alerts. We haven't found any great billing systems that can handle those types of scenarios.

We use [Olark](http://www.olark.com/) on our front page so that customers can chat with us. Our customer support team uses it on a daily basis to answer questions. We also use [ZenDesk](http://www.zendesk.com/) for support.

We also use [UserVoice](http://www.uservoice.com/) for our feedback and to get feature requests from our customers. Customers can suggest new ideas or vote up existing ideas for features on PagerDuty and luckily our customer base consists of DevOps and IT Ops and developers, these people are generally not very shy, they're opinionated and love giving us their feedback... we have a pretty active community.

For analytics, we use [Google Analytics](http://www.google.com/analytics/) like everyone else and it's pretty good. We also use [KISSMetrics](http://www.kissmetrics.com/) for measuring events in the application, funnels, keeping track of how many people click the free trial button or how many people go down the signup process. We also measure in-app metrics with KISS as well. We use [CrazyEgg](http://www.crazyegg.com/) to see heatmaps of how people click on our front page and our other marketing pages. We also use [Optimizely](https://www.optimizely.com/) for A/B tests. We hired a VP of Marketing recently and he's started to use it on a daily basis to optimize our landing pages and main marketing pages. We also started using [Marketo](http://www.marketo.com/) for marketing campaigns and email campaigns.

We use [Trello](https://trello.com/) for maintaining our roadmap. We use [New Relic](http://newrelic.com/) for application performance monitoring of our Rails stack.  They show which pages are slow on our site and allow us to dig in and find the root cause. [Pingdom](http://www.pingdom.com/) monitors our website from multiple locations around the world, it's very reliable.

We also use PagerDuty for non-critical alerts, such as server load average and disk space alerts.  We can't use ourselves for critical alerts because if we were to go down, we wouldn't get alerted!

##What business software do you most wish existed?

The thing that we really wish existed is a good billing system that can handle more complex scenarios. As discussed above, things like overages. Another case is that a good percentage of our customers, especially as we move into the enterprise segment, don't pay by credit card, they end up with a bill that's $5-$10k or higher and they just don't have a credit card to put that on so they have to pay by an invoice with a check. We haven't found any good billing systems aimed at startups that can actually handle that scenario. All of the ones that are out there like Recurly or CheddarGetter, they only handle credit card billing.


