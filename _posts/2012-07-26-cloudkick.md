---
layout: interview
title: Cloudkick
subtitle: Simple, powerful tools for managing and monitoring cloud servers.
tags: yc saas monitoring
---

##Who are you, and what do you do?

I am [Alex Polvi](https://github.com/polvi) and I do all sorts of things. I founded a company called [Cloudkick](https://www.cloudkick.com/) \[Acquired by Rackspace\]. We built tools to help companies manage their server infrastructure in places like Rackspace Cloud and other cloud providers. Our tools were for monitoring and management, the monitoring aspect was the most popular. After the acquisition, I stayed a little over a year and then left in May 2012 to figure out what's next.

##What is your technology stack?

Our toolset, at a low level, was [Python](http://www.python.org/) for our core applications, [Django](https://www.djangoproject.com/) for the web application stack. For front end software we used [Google Closure](https://developers.google.com/closure/) for Javascript. For databases we used [MySQL](http://www.mysql.com/) for the web app and for the data storage for the monitoring systems it was all [Cassandra](http://cassandra.apache.org/). Another tool we used in an interesting way was [Fabric](http://docs.fabfile.org/en/1.4.3/index.html), more on that in a second.

##What software do you use to run your business?

We built Cloudkick mainly on [Slicehost](http://www.slicehost.com/) and [Rackspace](http://www.rackspace.com/) although we used Amazon a bit as well. [Zerigo](http://www.zerigo.com/) provides API DNS management, we used it with Fabric so that we could provision a server and a DNS automatically. Moving up the stack a little bit we used [Mailchimp](http://mailchimp.com/) for sending emails, [Salesforce](http://mailchimp.com/) for our CRM, a startup called [Leftronic](https://www.leftronic.com/) for our dashboards, [Olark](http://www.olark.com/) for customer chat. [PagerDuty](http://www.pagerduty.com/) for our on call tracking.

Special shout out to [Tarsnap](http://www.tarsnap.com/), which is awesome, probably the coolest thing we used. They solve a pretty difficult technical problem and do it correctly.

##What business software do you most wish existed?

A simpler CRM, something that helps you do customer management and support a little easier. Zendesk and Salesforce kind of solve the problem. I want to be able to easily message a new user when they sign up and track their engagement from when they sign up until they actually start using features. In CloudKick's case, finding out when someone actually sets up a server. There's a startup called [Intercom](https://www.intercom.io/), which is doing something along these lines and there are a variety of CRM companies out there. I just want something simple, easy to integrate and doesn't require me to send my data anywhere. Maybe it's an add on to Django not necessarily a 3rd party service since it's my customer data. At Cloudkick, we ended up writing a bunch of software to do this ourselves.

