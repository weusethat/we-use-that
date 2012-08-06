---
layout: interview
title: MetaOptimize
subtitle: Machine learning, NLP, and data science consultancy, turning data into value.
tags: nlp ml data-science consulting big-data
---

##Who are you, and what do you do?

I'm Joseph Turian, the founder of the [MetaOptimize](http://metaoptimize.com/). We consult on ML, NLP, and data science. We provide implementations, as well as advice and coaching for in-house tech teams. In short, we help organizations turn data into higher-level information.

We also have the largest [machine learning and NLP forum](http://metaoptimize.com/qa/) on the web.

##What is your technology stack?

Ultimately, we're non-dogmatic, and will use whatever tools are the most effective.

Our weapon of choice is Python, backed by Numpy and Scipy. Python support for scientific computing is great, and there are many good libraries written in Python. Most of the algorithms we use are proprietary. If we're using existing approaches, we use [scikit-learn](http://scikit-learn.org/stable/) for standard algorithms, and [Vowpal Wabbit](http://hunch.net/~vw/) for fast training when prototyping. A lot of the time, we expose services through XML-RPC so that they can be called from any language. We don't use [NLTK](http://nltk.org/), since most of the models are not of high-enough accuracy.

Effective and strategic use of crowd-computation is so crucial to our core work that I'm going to include it in our stack. We control [Mechanical Turk](http://www.mturk.com) through [CrowdFlower](http://www.crowdflower.com). We use human annotation for tasks that are too small to justify building a model, or when very high accuracy is needed to supplement an automatic method, or when creating training data to improve models.

For screen scraping, we use [Selenium](http://seleniumhq.org/) driven from Python. (We're currently experimenting with [PhantomJS](http://phantomjs.org).) For large sites, we use [Scrapy](http://scrapy.org).

When prototyping, fields evolve rapidly, and we use a MongoDB store. A common pattern is to do a processing pass over the rows, and add a new field for the output. For relational data, we use [SQLalchemy](http://www.sqlalchemy.org/) with a Postgres backend.

For interfaces and data exploration, we usually write webapps in Django. We just started using Flask and might use it for future projects. We render graphs and figures in [matplotlib](matplotlib.sourceforge.net/).

We [Boilerpipe](http://code.google.com/p/boilerpipe/) a lot for extracting text from webpages.

We deploy using Fabric. But we're exploring Chef and Puppet. Whichever has a better community, that's the one we'll choose, since the feature sets are equivalent.

We use Mercurial exclusively. Git is too arcane, and the functionality is equivalent. We interact with git repos using the [Hg-Git](http://hg-git.github.com/) plugin.

We use Ubuntu for run-of-the-mill systems, like EC2 instances which we tear down quickly. We use Gentoo for long-running experiment boxes (dedicated servers), because it's much easier to get state-of-the-art packages and control compile options.

Backups are on S3.

##What software do you use to run your business?

Our experiments are typically memory-bound, so we rent >= 16GB dedis from Europe, where they are far less expensive. We have a dedicated experimental server from [Kimsufi.ie](http://kimsufi.ie), the "budget" line of [OVH](http://www.ovh.co.uk/). The dedis from [Hetzner](http://hetzner.de/) are also supposedly very good, and a comparable pricepoint. 100ms latency is fine for an SSH shell. If we did want to serve APIs to the states with low latency, [HoneLive](http://www.honelive.com) is the provider we'd choose. We 128 MB VPSes from [buyvm](http://buyvm.net) lying around that we never use, but refuse to give them up because they cost $15/yr and are always out-of-stock. For large-scale on-demand computation, we spin up EC2 instances.

We host public code on GitHub. We used to host private repos on GitHub, but now we host them on a private server. (I forgot that we don't need our paid Github plan anymore, and just downgraded to the free GitHub plan.) When collaborating with outsiders, we prefer to use BitBucket.

We use [Webfaction](http://webfaction.com) for webhosting. Their support is great. Our Q+A forum is powered by [OSQA](http://www.osqa.net), which is built on Django. OSQA is no longer actively maintained, and we are considering migrating the forum to [AskBot](http://www.askbot.com) [Will move this and company website above, will keep thempress mention here]. Our company website is WordPress, driven by a customized ThemePress theme. We throw over website behind [CloudFlare](http://cloudflare.com).

We use Google apps for email. For sending transactional email from our forum, we use [fastmail.fm](http://fastmail.fm)'s SMTP server, but are considering migrating to [SendGrid](http://www.sendgrid.com). [Boomerang for Gmail](http://www.boomeranggmail.com/) is AWESOME. I can't recommend it enough. We use it when we send an important email that needs a reply, to notify us if no reply has been sent. We would pay double for it. We don't have a mailing list, but should. We'll probably use [MailChimp](http://www.mailchimp.com).

We use [RightSignature](http://rightsignature.com) for executing contracts. The interface is very simple, and the signatures the great. If clients are puzzled and ask for the contract the old-fashioned way, we use UnityFax. The service gives us with our own SF-area fax number, and we send and receive faxes through email. It's so damn cheap ($1.99/mo) and works fine. You've probably never heard of them, because they suck at branding and SEO.

For our phone, we use [GrassHopper](http://grasshopper.com). Our number is 855-ALL-DATA. Because we don't just work on big data, sometimes our clients have small data. We care about all data. We only discriminate between data when [modeling conditional distribution](http://en.wikipedia.org/wiki/Discriminative_model).

We use Google Docs a lot for sharing and collaboration, and evolving documentation that clients might want to edit.

We bill for projects, not time, so we don't track billable hours.

We use [Indinero](http://indinero.com) to trap all financial activity, which makes it easier to determine deductibles during tax season.

For IM, we use gchat, but are migrating to Pidgin with the OTR plugin.

And I use Pocket (formerly Readability) for reading [entreporn](http://swombat.com/2012/7/11/entreporn-learning-doing-wasting) while I'm on the subway.

##What business software do you most wish existed?

We don't tweet, because a lot of the twitter stream is noise. Hence, it takes to long to consume tweets that we care about. However, we'd like to use twitter to increase our brand recognition, engage potential collaborators and clients, demonstrate expertise, and establish our company as a thought-leader. Something that filtered the twitter stream so we could only see relevant tweets is something we'd pay for.

We would like more sophisticated tools for doing crowd-programming. CrowdFlower is only good for one-shot tasks, not complicated pipelines. The [TurKit](http://groups.csail.mit.edu/uid/turkit/) library is promising, but I'd prefer something with more features like CrowdFlower, so that we wouldn't have to build everything ourselves. [CrowdControl](http://crowdcontrol.com/) is a new entrant into their space which appears to solve the problem correctly, but they're an enterprise solution and charge yearly, so it's not cost-effective for engagements that typically last several months.
