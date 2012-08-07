---
layout: interview
title: MetaOptimize
subtitle: Machine learning, NLP, and data science consultancy, turning data into value.
tags: data-science consulting
---

##Who are you, and what do you do?

I am Joseph Turian, the founder of the [MetaOptimize](http://metaoptimize.com/). We consult on machine learning, natural language processing, and data science. We provide implementation of solutions, advice and coaching for in-house tech teams. We help organizations turn data into higher-level information.

We also have the largest ML and NLP [forum](http://metaoptimize.com/qa/) on the web.

##What is your technology stack?

We are not dogmatic, and will use whatever tools are the most effective.

Our weapon of choice is [Python](http://www.python.org/), backed by [NumPy](http://numpy.scipy.org/) and [SciPy](http://www.scipy.org/). Support for scientific computing in Python is great, there are some good libraries out there. Most of the algorithms we use are proprietary. If we use existing approaches, we like [scikit-learn](http://scikit-learn.org/stable/) for standard algorithms, and [Vowpal Wabbit](http://hunch.net/~vw/) for fast training when prototyping. A lot of the time, we expose services through [XML-RPC](http://xmlrpc.scripting.com/) so that they can be called from any language. We do not use [NLTK](http://nltk.org/), since most of the models are not of high-enough accuracy.

For screen scraping, we use [Selenium](http://seleniumhq.org/) driven from Python. We are currently experimenting with [PhantomJS](http://phantomjs.org). For large sites, we use [Scrapy](http://scrapy.org).

When prototyping, fields evolve rapidly, and we use a [MongoDB](http://www.mongodb.org/) store. A common pattern is to do a processing pass over the rows, and add a new field for the output. For relational data, we use [SQLalchemy](http://www.sqlalchemy.org/) with a [PostgreSQL](http://www.postgresql.org/) backend.

Effective and strategic use of crowd-computation is so crucial to our core work that I am going to include it in our stack, I will talk about our service providers below.

For interfaces and data exploration, we usually write webapps in [Django](https://www.djangoproject.com/). We just started using [Flask](http://flask.pocoo.org/) and might use it for future projects. We render graphs and figures in [matplotlib](matplotlib.sourceforge.net/).

We [Boilerpipe](http://code.google.com/p/boilerpipe/) a lot for extracting text from webpages.

We deploy using [Fabric](http://docs.fabfile.org/). But we're exploring [Chef](https://github.com/opscode/chef) and [Puppet](https://github.com/puppetlabs/puppet/). We will choose whichever has a better community, since the feature sets are equivalent.

We use [Mercurial](http://mercurial.selenic.com/) exclusively. Git is too arcane, and the functionality is equivalent. We interact with git repos using the [Hg-Git](http://hg-git.github.com/) plugin.

We use [Ubuntu](http://www.ubuntu.com/) for run-of-the-mill systems, like EC2 instances which we tear down quickly. We use [Gentoo](http://www.gentoo.org/) for long-running experiment boxes (dedicated servers), because it's much easier to get state-of-the-art packages and control compile options.

Our Q+A forum is powered by [OSQA](http://www.osqa.net), which is built on Django. OSQA is no longer actively maintained, and we are considering migrating the forum to [AskBot](http://www.askbot.com). Our company website runs on [WordPress.org](http://wordpress.org/).


##What software do you use to run your business?

Our experiments are typically memory-bound, so we rent >= 16GB dedis from Europe, where they are far less expensive. We have a dedicated experimental server from [Kimsufi.ie](http://kimsufi.ie), the "budget" line of [OVH](http://www.ovh.co.uk/). The dedis from [Hetzner](http://hetzner.de/) are also supposedly very good, and a comparable pricepoint. 100ms latency is fine for an SSH shell. If we did want to serve APIs to the states with low latency, [HoneLive](http://www.honelive.com) is the provider we'd choose. We have 128 MB VPSes from [buyvm](http://buyvm.net) lying around that we never use, but refuse to give them up because they cost $15/yr and are always out-of-stock. For large-scale on-demand computation, we spin up [EC2](http://aws.amazon.com/ec2/) instances. Our backups are on [S3](http://aws.amazon.com/s3/).

For crowd computation, we control [Mechanical Turk](http://www.mturk.com) through [CrowdFlower](http://www.crowdflower.com). We use human annotation for tasks that are too small to justify building a model, or when very high accuracy is needed to supplement an automatic method, or when creating training data to improve models.

We host public code on [GitHub](https://github.com/). We used to host private repos on GitHub, but now we host them on a private server (I had forgotten that we do not need our paid Github plan anymore, and just downgraded to the free GitHub plan). When collaborating with outsiders, we prefer to use [BitBucket](https://bitbucket.org/).

We use [Webfaction](http://webfaction.com) for webhosting, their support is great. Our main WordPress site is driven by a customized [ThemePress](http://www.themepress.com/) theme. We throw our website behind [CloudFlare](http://cloudflare.com).

We use [Google Apps](http://www.google.com/enterprise/apps/business/) for email. For sending transactional email from our forum, we use [fastmail.fm](http://fastmail.fm)'s SMTP server, but are considering migrating to [SendGrid](http://www.sendgrid.com). [Boomerang for Gmail](http://www.boomeranggmail.com/) is AWESOME. I can't recommend it enough. We use it when we send an important email that needs a reply, to notify us if no reply has been sent. We would pay double for it. We do not have a mailing list, but should. We will probably use [MailChimp](http://www.mailchimp.com).

We use [RightSignature](http://rightsignature.com) for executing contracts. The interface is very simple, and the signatures are great. If clients are puzzled and ask for the contract the old-fashioned way, we use [UnityFax](http://www.unityfax.com/). The service gives us our own SF-area fax number, and we send and receive faxes through email. It is so damn cheap ($1.99/mo) and works fine. You have probably never heard of them, because they suck at branding and SEO.

For our phone, we use [GrassHopper](http://grasshopper.com). Our number is 855-ALL-DATA. Because we don't just work on big data, sometimes our clients have small data. We care about all data. We only discriminate between data when [modeling conditional distribution](http://en.wikipedia.org/wiki/Discriminative_model).

We use Google Docs a lot for sharing and collaboration, and evolving documentation that clients might want to edit.

We bill for projects, not time, so we don't track billable hours.

We use [Indinero](http://indinero.com) to trap all financial activity, which makes it easier to determine deductibles during tax season.

For IM, we use gchat, but are migrating to [Pidgin](http://www.pidgin.im/) with the OTR plugin.

And I use [Pocket](http://getpocket.com/) for reading [entreporn](http://swombat.com/2012/7/11/entreporn-learning-doing-wasting) while I am on the subway.

##What business software do you most wish existed?

We don't tweet, because a lot of the twitter stream is noise. Hence, it takes too long to consume tweets that we care about. However, we would like to use twitter to increase our brand recognition, engage potential collaborators and clients, demonstrate expertise, and establish our company as a thought-leader. Something that filtered the twitter stream so we could only see relevant tweets is something we would pay for.

We would like more sophisticated tools for doing crowd-programming. CrowdFlower is only good for one-shot tasks, not complicated pipelines. The [TurKit](http://groups.csail.mit.edu/uid/turkit/) library is promising, but I'd prefer something with more features like CrowdFlower, so that we would not have to build everything ourselves. [CrowdControl](http://crowdcontrol.com/) is a new entrant into the space which appears to solve the problem correctly, but they are an enterprise solution and charge yearly, so it is not cost-effective for engagements that typically last several months.
