---
layout: interview
title: Are You A Human
subtitle: Simple, fun games that replace obnoxious CAPTCHA
tags: human verification
---

##Who are you, and what do you do?

I am Reid Tatoris, one of the founders of [Are You a Human](http://areyouahuman.com).  Are You a Human replaces the [obnoxious, distorted text challenges known as CAPTCHA](http://goo.gl/35Z3d) with simple, fun games.  Our games, which we call PlayThrus, are free for websites to use and increase form submissions by 40%.  We have [plugins](http://portal.areyouahuman.com/installation) for all the major platforms and setup takes minutes.  Over 4,000 websites were using PlayThru as of December 2012 and we serve over 18 million PlayThrus per month.

We are looking for platforms to partner with.  If you can help us with [plugins](http://portal.areyouahuman.com/installation) for new platforms, or have suggestions for what platforms we should be on, we’d love to promote you on our blog.  Please [drop us a note](http://goo.gl/2AI0m) here.

##What is your technology stack?

Our infrastructure lives completely on Amazon’s AWS and is managed by both in-house developed tools and RightScale, the latter for our production systems. Originally we used Amazon’s RDS but discovered the restrictive management capability we required to implement our custom database design and data warehouse. RightScale has given us the ability to scale very quickly, particularly in the face of an AWS zone outage, or the occasional link hitting a Reddit front page.

Along with the MySQL database cluster, we also utilize Membase to keep the system running fast with high availability for clients, customers, and users. This one-two punch has no doubt allowed us to handle influxes and sudden, sustained growth.

The backend of the software itself is built with PHP and has supporting software written in Python and Ruby. In order to support a wide variety of platforms we use a new framework and language called [Haxe](http://haxe.org). This allows a single codebase to deploy to both HTML5/JavaScript and Flash/ActionScript. Custom JavaScript is augmented with jQuery though we try very hard to use it in a light capacity to avoid any potential conflicts with any other frameworks.

##What software do you use to run your business?

We use [Unfuddle](https://unfuddle.com) for both Git and SVN (which is why we don’t use github), and [Pingdom](http://www.pingdom.com) for server monitoring.  To share documents we use both [Dropbox](https://www.dropbox.com) and [Google Drive](https://drive.google.com), they each have their uses.  [Fetchnotes](http://www.fetchnotes.com) is an awesome, simple tool to help you share and organize tasks.

For our newsletter we use [MailChimp](http://mailchimp.com), and [Sendgrid](http://sendgrid.com) for system generated emailing and tracking. [Hootsuite](http://hootsuite.com) is our current choice for managing social media across multiple people.  It still has some drawbacks but is the best we’ve seen for shared control.  Our feedback/support management platform is GetSatisfaction. 

We use [Olark](https://www.olark.com) to live chat with customers on our site, and [Skype](http://www.skype.com) to communicate internally.  It looks like almost everyone here uses [Olark](https://www.olark.com) so you all know how awesome they are.  

[Join.me](https://join.me) is an awesome screensharing tool for talking with customers. [Boomerang](http://www.boomeranggmail.com) and [Rapportive](http://rapportive.com) are both invaluable gmail plugins.  If you haven’t yet checked them out do it now.  

##What business software do you most wish existed?

Our games show up on a broad range of sites and right now classifying them by type, category, usage type, etc is a very manual process (thank the Interwebs for Mechanical Turk).  It would be great if there were a tool that would make this process automatic.

We used to use [ThinkFuse](https://www.thinkfuse.com) to keep investors and advisors up to date.  It was a great, simple tool but sadly they were bought and decommissioned.  They recommend using [SalesForce Rypple](http://rypple.com) now, but it is not nearly as simple and not built for the same purpose.

An events-based email system.  While there are great newsletter systems like Mailchimp or [Sendgrid](http://sendgrid.com) to send emails, there is not a system to send email based on customer events.  We have ended up building our own because nothing fits this bill.  For example, we send emails to new customers when they sign up, if they have not completed the installation process.  We have this information in our database, but getting an email system hooked into it has been a time-consuming challenge.