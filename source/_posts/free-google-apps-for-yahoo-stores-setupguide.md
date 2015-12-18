title: How to Connect Google apps to a Yahoo Store
tags:
  - business
  - web development
  - yahoo store
id: 570
categories:
  - Uncategorized
date: 2010-09-08 04:35:22
---

**Update** This article is old and no longer accurate if you want to use gmail for your business email you will need to sign up for google apps for business and follow any new configuration steps.

* * *

This Guide will take you step by step through configuring your **Yahoo! Merchant Solutions** account to use google apps for email, calendar, docs, and a few new recommended add-ons now provided through the market place. I apologize in advance if the title is a bit off since this tutorial only applies to next gen merchant solutions accounts and **Store { legacy }** customers **don't** have access to these settings and control panels with out upgrades. If you are interested in upgrading your Store account into a Merchant Solutions account Please contact one of their techs to do an evaluation and make any recommendations prior to upgrading the account they handle this frequently and can help make it a smooth transition.

<!--more-->

This post should not be perceived as any kind of negative statement towards Yahoo!(s) Ecommerce product and I hope it is not taken that way at all, but being an avid web and tech user I have certain needs that Yahoo! currently doesn't offer or support and this is just one solution for expanding on their open platform. I found the Google Apps Standard edition a little over a year ago when I wanted a better way to sync my email accounts on multiple computers via imap. This is ideal for someone who works in tech full time and is also a full time student and freelancer...whew.  Also after hours of ecommerce store owner feedback I found this to be needed and currently very difficult tasks to for an ebusiness owner as well.

### Sign up

**Quick Note:** this is for the **Standard edition** so it is not as robust as some other more marketed apps packages. This version includes **50** users maximum, for email through gmail for you@yourdomain.com, Calendar, Sites, and Docs, You can add on additional features and upgrade to a package that better suites your organizations needs but this is enough to get the new and smaller guys started.

1.) [**Sign up for a basic gmail account**](https://www.google.com/accounts/NewAccount?service=mail&continue=http://mail.google.com/mail/e-11-dfa5d4791c53aa292faaeb1811c2f-9a6181b4b0fd9c3e0fcfa7585a6f971ba3121f62&type=2 "Set up your business Master google account ")

If you already have a personal gmail account you can use this if its a one man shop or really small project but if you have employees or a retail store set up a new gmail account for your business and consider this your **Master** account. This shouldn't need to be shared with anyone other than possibly a business partner. If you haven't used google for mail before you'll find its fairly simple but quite quick and has a fairly intuitive layout.

2.) [ **Sign up for google apps standard** ](http://www.google.com/apps/intl/en/group/index.html "Sign up for your free google apps standard account")

This is fairly self explanatory through the sign up but when first signing up choose **I want to use an existing domain name**, and I am the domain **Administrator**.

On the next page fill out the basic information about your organization. Then advance on and create your first Administrator account. Once created we will start the verification process to make your account opperational and then begin the DNS changes to start the transition from you current provider for email Yahoo! or otherwise.

### Verify

This step can appear to be a bit tricky but I have used 2 of the available options for various types of setups on the Yahoo! platform with very little problems.

**Store editor sites**

If you use the store editor for you ecommerce business I recommend the meta tag version for verification and I place the provided html in the variables under **head tags** and on the homepage with the provided head tags or through using the over ride variable and adding it. I say both locations because each template on the yahoo store goes through numerous customizations through its life cycle and I try and be extra thorough to prevent future complications. After adding the file make sure and **publish** the store editor.

**Non - Editor sites**

If you built your store using PHP or Dreamweaver I find it is usually easiest to add the html file to the root directory of your web hosting account. This is a simple small file so I recommend just using the file upload in the File Manager in the Web Hosting Control Panel. To locate the file to upload select the upload an html file to your server option and click on the file download link. Choose to save this file to your desktop so you can quickly access it and upload it to the File Manager and then delete it from your desktop when your successfully verified in the next step.

Once the meta tag has been added and published in store editor or the file has been successfully uploaded and tested on the web hosting side of your account go ahead and click the verify button in google apps.

#### Advanced { mx records and redirects }

At this point you have full access to your dashboard and can start using the calendar, sites for collaboration or micro campaings etc, and docs for sharing documents and files with your team members. After this step I created some simple redirects to make access easier on my team members which I will get to in a moment below but we also need to configure some DNS records in the Domain Control Panel in order to activate the email service to use your domain through gmail.

1.) Access the google apps dashboard and select **Service Settings** > **Email** from the top navigation drop down list. Now scroll down to the link for **instructions on how to activate email**. Then click on the second link for **Change MX Records** This screen through your sign up should already be listing the settings for Yahoo! or your current provider.

Once you have located this page open a new tab or a new window and sign into your Yahoo Small business account. Once in the account acess the **Domain Control Panel** and click on **Manage Advanced DNS Settings**.

Now simple add the server addresses as listed with the same priority indicated. Then click **Submit**. Now if you've ever made a DNS change before you know these things can take some time to go into effect {propagate}, so a quick word to the wise take the time to plan for this type of transition and do backups on all important emails and try and time this for a 48-72 hour lull in your work week { a weekend }. Sometimes they can be finished updating in 24 hrs or less but caution is always best in these situations.

Once you have completed and added these records go ahead and click that you have completed these steps at the bottom of your Google apps email settings page and this will trigger them to scan your domain settings to detect the new MX records quoted at 48 hrs.

**Once this is completed you will no longer have Yahoo! Mail for your business email** { you@yourdomain.com }. So be sure this is what you want and if not contact support at Yahoo! Immediately to reset the settings to default and prevent disruption in your service.

One other caveat is that you can no longer contact Yahoo! for email support as they will no longer be providing it. I have had extremely good luck with the Google services but can't make any promises and you ultimately have to make this call for your business or organization.

**Now for the Redirects** { optional }

This was something I did to make life easy for me and my team-mates but is not required you can log into your account at google apps and through the dashboard find links to all your different services but I find extra clicks as one more time waster and prefer a handy url to take me directly to the source.

**Email**

I have email open constantly but this make sign in and access from anywhere a breeze.

1.)  In your yahoo web hosting control panel access the file manager and create a new directory called email { or something you find easy }

2.) Now visit the domain control panel and click on manage domains and subdomains and add a matching subdomain and link it to the directory named the same you just created { it should be in the drop down list.

3.) Now a bit of php magic. Open the google apps dashboard in a new window so you can view the urls of your services. Now in your Yahoo! services window access the webhosting control panel and go to the file manager. - Once in the file manager click on your new email directory and then click on the **Create** > **PHP** icon at the top.

_tech note : remove all of the provided code from the document it is creating. If using php 5 on yahoo this will break the redirect._

In your new blank document add :

    &lt;?php header('Location:http://*your google apps gmail url*');?&gt;

After you have added the small php snippet and replaced the sample text above with your email url from the google apps dashboard save this file in the Yahoo! file manager as index.php . Now you can access your business mail through gmail by going to email.yourdomainname.com .

I also set this up for access to my apps dashboard by using the same method and a different subdomain just for quick access so feel free to play around and have some fun gettung organized and optimizing your new work flow.