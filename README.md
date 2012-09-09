myreef.tv 
-----------

Background
===========

I feel that the quality of reef websites are too low.  When I am searching for information, or just images, I end up on outdated ugly websites.
Images are scattered accross the web and cannot be seen on one beautiful website.  I want myreef.tv to be more user friendly and to give the user what
they want whether it is information, solve a case or just beautiful galleries.  It should be easy to view images.  The website will be public facing,
and the majority of the content is to come from users.  Users can fill out their profile.  Users can store images of their fishtank which are related
to a user.  There will be a facility to “Mark” images with jquery to highlight an area that they need feedback on.  They will also be able to comment
on the highlighted features.

Functional 
==========

I will build myreef.tv in Ruby on Rails, and will be hosted on Heroku.  I will use Rspec and Cucumber for testing.  Git will be used for version
control.  HAML will be used for the template.  Twitter bootstrap will be used for the css, compiled with SASS.  The database will be mongodb.

Modules
==========

1.  Gallery
============

Images will be searchable.  An image can be tagged to make searching easier.  The maximum size of an image is 3mb.  There may be hosting implications
with this as the site will grow quickly.  Images will open in a lightbox when clicked on.

2.  Webuser
============

Users will be able to Register an account and login to the website.  When registering, an approval email will be sent to the user.  They will have the
ability to change their encrypted password and details.  A users profile needs to accommodate as much information as they want to put in there. 
4.  Videos from youtube
========================

Users can embed youtube videos, and will be displayed in their video section.  Videos can be commented on and rated up and down.
5.  Search
===========

Users can search by tags, or just a textbox.  Can look into using a search service like google.

6.  Tagging
============

When users create content, they will be able to tag it so that it is easy to find.
7.  Events
===========

Users will be able to add events, and tag them.  They will also put in a postcode and this will appear on a map.
8.  Cases
==========

Users may have unsolved mysteries going on in their tank, and users will have the opportunity to solve them.  Cases can be Unsolved oro add a tank to
their profile.
A fishtank has a main image to represent it.  It will also have metadata that users can fill in if they want to keep track of things like a logbook.
There will also need to be some sort of chart for parameters of a tank.
  A tank has to be added to create a case.


  12.  Fish database
  ===================

  Users can add fish to their fishtanks.  Each fish has a profile.  The point of this is that fish are re-usable, and existing fish can be added to
  another users tank.  An automated system will populate fish data.

  13.  Comments
  ==============

  Users can comment on Fish, Fish tanks, Images.  Comments will not be nested and will only be inline.  Comments will need to be approved by me before
  they appear on the website.  As the website grows, this may need to be automated.
