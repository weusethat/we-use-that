---
layout: interview
title: Filepicker
subtitle: An SDK for easy file uploads and cloud storage integration.
tags: yc sdk cloud files
---

## Who are you, and what do you do?

I am [Brett Van Zuiden](https://twitter.com/brettcvz), CEO and one of the founders at [Filepicker.io](https://www.filepicker.io/). We help developers on web and mobile connect to all the different sources of content out there. Everything from a user's webcam to their Dropbox, their Facebook photos etcetera. We make it really to pull that content into your application.

We launched back in April and have been growing fast. Sunglass.io uses us for 3D modeling, Fetchnotes uses us for note taking and attachments. There is a wide range of applications on iOS, Android and the web that use Filpicker.io.

We are growing our team as well as the number of applications using us. Check out our [documentation](https://developers.filepicker.io/docs/) and build it into your applications. We would love to promote you in our [gallery](https://www.filepicker.io/gallery/) and show you off. We are always excited to see what smart people can do when you give them the right tools.

## What is your technology stack?

Starting from the top we are a very Javascript-heavy site. We do most of our stuff in raw Javascript with a bit of [JQuery](http://jquery.com/) on top. We do not use Backbone.js or things like that. On the server we use [Flask](http://flask.pocoo.org/) and that talks to [mongoDB](http://www.mongodb.org/). We deploy using a great service called [Fabric](http://docs.fabfile.org/en/1.4.3/index.html) that we use in order to manage our cloud infrastructure distributed across different cloud services.

We work with a lot of third party APIs as part of Filepicker.io. We lean heavily on open source libraries that wrap the services we provide access to.

We use [Git](http://git-scm.com/) for everything from managing our codebase to deploying our code.

## What software do you use to run your business?

There are a few things that we spend money on. We use [AWS](https://aws.amazon.com/) for everything from [CDN](http://aws.amazon.com/cloudfront/) to hosting our databases and the application layer.

In terms of project management, we use [GitHub](https://github.com/), it is a fantastic service.

We use [Mailgun](http://www.mailgun.com/) for all of our email. Everything from reset password emails to some of the email marketing we are doing goes through Mailgun.

Another interesting thing that we end up paying for is some APIs. For example, Google charges for their [Image Search API](https://developers.google.com/custom-search/v1/overview). Another is [openTalk](http://www.telappliant.com/opentalk-api). We pay for them to make our service better for our users.

We use [Mixpanel](https://mixpanel.com/) on the analytics side as well as [Google Analytics](http://www.google.com/analytics/). We use Google Analytics for a macro perspective, then we dive deep with Mixpanel. We use [Insightly](http://insight.ly/) for our CRM, it is nice that they hook directly into [Google Apps](http://www.google.com/enterprise/apps/business/).

We are big [Olark](http://olark.com/) fans. With Olark we reduce the friction between someone landing on the site and giving us feedback about how we can improve and what they would like to see. When we closed our first sale via Olark we realized it was a good investment for us.

We use [Stripe](https://stripe.com/) for billing, which is great. We still need to connect their webhooks into the rest of our infrastructure to make receipts out and some other stuff more seamless. But Stripe has been pretty fantastic.

## What business software do you most wish existed?

We do both grassroots marketing as well as direct outreach to application developers.

One concept we find useful is when a user downloads an app from an app store, the store recommends other related apps. 

It would be great to have something similar for app developers. If we contact a developer and they built an app in a  space, tell us the other developers that we should talk to. Essentially, we want a tool that tells us the people who we should be talking to and how to reach them.

It is a little magical but I think it is possible.