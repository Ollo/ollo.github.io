title: web analytics installation primer
tags:
  - business
  - google analytics
  - open source
id: 839
categories:
  - Uncategorized
date: 2011-07-11 21:22:41
---

Analytics software will always need a method to gather data from the visitors as they view the pages on your site. Most commonly this is gathered through a snippet of javascript that is added to your pages. From my experience I have found this to be a common reason most site owners steer clear of implementing analytics due to a fear of working with code. This article will attempt to take a high level simple approach to installation so you can begin tracking without being lost in the code needed to gather data.

## Getting Started

The first thing needed is analytics software. If you have read the [previous article](http://ollomedia.com/press/create-better-user-experiences-through-web-analytics/) regarding software options you should have a pretty good idea of some basic options to use. Again I am keeping things basic in this series to have the largest possible scope so I will be sticking to Google Analytics, Yahoo! Web Analytics { YWA }, and Piwik. YWA is again restricted to Yahoo merchant customers with a Merchant  Solutions Standard or Professional account so I will spend the least amount of time discussing it as it is for a more narrow audience and they have a dedicated support department to assist with activation and installation. For the others I also will be heavily promoting some simple tools to use for set up but am happy to answer any specific questions via the comments section.

### Google Analytics

First steps are to use your google account to [sign up for analytics](http://google.com/analytics).  Once you have created your account we will need to add the tracking code. Google has now released an asynchronous javascript snippet so if you previously are familiar with placing javascript before the closing body tag `</body>` then this is a bit different. This snippet is designed to go in your head-tags region. just before the closing head tag.


    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-XXXXX-X']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>


This small snippet is intelligent in that it will load the tracking script in the background of your page so it won't interfere with the rest of your pages content. This is a great feature especially if you have a dynamic site with other javascript files being used to create custom features and interactions. Make sure and replace the `UA-XXXXX-X` with your assigned account number that is generated during the sign up. More info on installation and customizing for additional features or specific types of tracking are available [here](http://www.google.com/support/analytics/bin/answer.py?hl=en&amp;answer=174090)

Another great option for Google analytics if you are a wordpress user is to use a plugin. I personally use the [Google Analyticator](http://wordpress.org/extend/plugins/google-analyticator/ "Google analytics plugin for WordPress") plugin on this site. I like how it automatically adds the tracking code to your site and has plenty of customization options in the plugin settings. It also provides a nice dashboard widget for quick updates

### Piwik

Open Source Web Analytics Piwik is  an open source free to use analytics software that is "self hosted". This means that if you are concerned with divulging visitor data to Google or another provider and would like to keep that data internal this might be the right solution for you. They offer a robust software with beautiful dashboard widgets, a simple installation { fairly similar to a WordPress installation } and complete control over your analytic data. First steps are to download the software and double check the requirements to ensure your server is compatible to run the software.  At the time of this article the server requirements are :

* PHP version 5.1.3 or greater
* MySQL version 4.1 or greater
* (enabled by default) PHP extension [pdo](http://php.net/pdo) and [pdo_mysql](http://php.net/pdo_mysql), or the mysqli extension.

If you don't know your server configuration you can create a simple php file with this snippet of code add it to the server and then view it in a browser


    <?php
      phpinfo();
    ?>


This will provide a visual print out of your server config to ensure your server has the needed resources to run the software. Once you have verified your hosting server is compatible you will need to download the software from the [Piwik.org website](http://piwik.org "Piwik web analytics "). Once the zip file is downloaded go ahead and un-zip the files. You should be provided with a folder of all the needed software files and an installation document. I'm not going to cover the nitty gritty details on the installation as they have have done a great job with their provided documentation and it is as simple as ftp the folder to your web server and then browsing to { http://yourdomain.com/your-installation-directory }. Once you view this location it should start the "5 minute install".  The official write up on the process of installation is available[ here ](http://piwik.org/docs/installation/ "piwik analytics installation walkthrough ")

Once installed you will need to add the tracking code into your pages or templates. For Wordpress users there is a plugin already available to add this code and add some nice dashboard widgets. [The plugin is available here ](http://wordpress.org/extend/plugins/wp-piwik/ "piwik analytics for WordPress ") This code is standard Javascript so you will want to load it from the footer of your pages just below the closing body tag { </body> }. Again also make sure to copy this code from your install screen to ensure you are tracking the correct project and connecting to the correct database.


    <script type="text/javascript">
      var pkBaseURL = (("https:" == document.location.protocol) ? "https://ollomedia.com/piwik/" : "http://ollomedia.com/piwik/");
      document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
    </script>
    <script type="text/javascript">
      try {
        var piwikTracker = Piwik.getTracker(pkBaseURL + "piwik.php", 1);
        piwikTracker.trackPageView();
        piwikTracker.enableLinkTracking();
      } catch( err ) {}
    </script>
    <noscript>
      <p>
        <img src="http://ollomedia.com/piwik/piwik.php?idsite=1" style="border:0" alt="" />
      </p>
    </noscript>


Once your code is installed you can log in and start getting familiar with the dashboard and the default reports. There also is a [Tracking API](http://piwik.org/docs/analytics-api/reference/ "Piwik Tracking API") so if you are a more advanced developer you may want to work through the documentation and develop your own tracking application.

### Yahoo! Web Analytics

The Yahoo solution is only available to customers with active Merchant Hosting accounts { online stores } or advertising clents { PPC }. I won't spend too much time on this software but will say that if you are running an ecommerce site and host with Yahoo this is a tremendous asset to your business. This software is extremely robust and out of the box is tailored for conversion tracking. By this I mean that the reports are tailored for selling online and reflect that in the types of reports. I have used this for several other types of tracking { blogs, social media pages etc } and find it to be a very powerful software and highly recommend it to any Yahoo! customer that hosts their ecommerce business with them. There also is a great plugin for WordPress to easily configure it to track your blog or site's performance.

[The plugin is available here.](http://wordpress.org/extend/plugins/ywa-yahoo-web-analytics/ "yahoo analytics for wordpress") There are also some great [webinars](http://store.yahoo.com/webinars.html "training webinars") from the product marketing teams as well as very [extensive documentation](http://store.yahoo.com/ywa.html "Yahoo Analytics Documentation") on configuring custom actions and other These are some basic tools and options for installing your analytics tracking software on your site.  If you have additional questions or need clarification please feel free to comment. Happy Tracking.
