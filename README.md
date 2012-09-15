myreef.tv 
=============

This is my project to learn rails, and to produce a fully functional website by the end of it.

Background
-----------

Being a reefkeeper myself, I feel that the quality of reef sites are too low to represent the beautiful coral reefs.  When I am searching for information, or just want to see images, I end up on outdated ugly forums.  Images are scattered across the web and I have not yet found a site that could keep me engaged for more than a minute.  

I want myreef.tv to be more user friendly and to give the user what they want whether it is information, solve a case or just beautiful galleries.  It should be easy to view images.

The site will be public facing, and the majority of the content is to come from users.  Users can fill out their profile.  Users can store images of their fishtank.  There will be a facility to “Mark” images with jquery to highlight an area that they need feedback on.  

They will also be able to comment on the highlighted features.

The website will be built in phases.  First it will be about letting users upload images which are easilly accessible, then I will make the site more interactive for users.

Functional 
----------

I will build myreef.tv in Ruby on Rails (latest at this time is 3), and will be hosted on Heroku.  I will use Rspec and Cucumber for testing.  Spork and Guard will be used in conjunction with this.  Git will be used for version control.  Erb will be used for the template.  Twitter bootstrap will be used for the css, compiled with SASS.  The database will be mongodb.

Modules
----------

1.  Gallery
------------

Users will upload images to their account once registered.  Images will be searchable, and can contain meta-data.  An image can be tagged and rated to make searching easier.  The maximum size of a raw image upload will be 3mb.  There may be hosting implications and I will need to keep an eye on this.  Images will open in a popup lightbox when clicked on, which will display the information of the image next to it.  In the initial listing, images will display in a grid and will be divided into pages.  20 per page.

Meta data fields will include:
Caption (optional)
Description (optional)


2.  Webuser
------------

Users will be able to Register an account and login to the site.  When registering, an approval email will be sent to the user.  They will have the
ability to change their encrypted password and details by resetting their password.  A users profile needs to accommodate as much information as they want to put in there.  The registration form should be simple and not contain many fields.  Users can go back and edit their profiles if they feel like it.   I can blacklist problem users.

Tanks, Cases, Rank, Comments and Events belong to users.

4.  Videos from youtube
------------------------

Users can embed youtube videos, and will be displayed in their video section.

5.  Search
-----------

Users can search by tags, or just a free textbox.  Can look into using a search service like google.

6.  Tagging
------------

When users create content, they will be able to tag it so that it is easy to find.  New tags can be created by the user.  There will be a tag type,
and tag.

7.  Events
-----------

Users will be able to add events, and tag them.  They will also put in a postcode/long-lat and this will appear on a map.

8.  Cases
----------

Users may have unsolved mysteries going on in their tank, and users will have the opportunity to solve them.  Cases can be unsolved or add a tank to
their profile.
A fishtank has a main image to represent it.  It will also have metadata that users can fill in if they want to keep track of things like a logbook.
There will also need to be some sort of chart for parameters of a tank (may be a phase 2).
A tank has to be added to create a case.


12.  Fish database
-------------------

 Users can add fish to their fishtanks.  Each fish has a profile.  The point of this is that fish are "re-usable", and existing fish can be added to another users tank.  An automated system will populate fish data.

13.  Comments
--------------

Users can comment on Fish, Fish tanks, Images, videos.  Comments will not be nested and will only be inline.  Comments will need to be approved by me before
  they appear on the site.  As the site grows, this may need to be automated.

