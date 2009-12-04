Site Sender
===========
The Concept
-----------
So, you're using your mobile device to browse the internet and you get back home - or you find a site that needs flash, you don't want to be typing that URL into your computer!

Cue SiteSender! You make use of a bookmarklet and the page you're viewing is sent to the SiteSender online bookmark repository, if your computer is running the SiteSender target application then that URL will pop up on your computer immediately.

I want!
-------
Its not ready for full-time duty just yet, but if you're brave enough to get this target app running on your own then the online section is already running on [heroku][1]. If you don't already know heroku is The Best. RoR host. Ever.

Known Issues
------------
 * The IP address heroku uses changes, so I'm probably going to have to get some crypto going so the Target can be sure its really SiteSender online making the request to open a page.
 * UPnP is in the works so most people should be able to have it just run
 * I want a shiny GUI! I don't know how to do this tho, so that might be a while yet…

Hopefully these will be ironed out soon!

 [1]: http://heroku.com ("heroku rails hosting")