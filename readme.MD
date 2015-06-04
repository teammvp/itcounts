ItCounts - Make a Difference
==================================

ItCounts aims to overcome the apathy of "huge ocean, small fish" syndrome by suggesting small, doable tasks that a community of others have also committed to performing and showing the difference that this group has made. 

Quickstart
----------

**Credentials**    
Username: admin    
Password: password is the same as username

Visit https://itcounts.herokuapp.com - join a cause, be part of a community of change!

Cool Tech
---------

* Login url returner - AJAX request that passes the current URL in as a "data" parameter, which is used by the login/session controller to return the user to the page they came from when successfully logged in. Is cool tech because the user never sees any parameters in their URL and the magic just happens.
* Just rails in general was fun to use and get to know better
* Git strategy of pull-requesting to a "group repository" to alieviate the likelihood of merge conflicts.

Technology Used
---------------

* Ruby
* Rails
* Javascript/AJAX
* Postgres
* Foundation and custom CSS

Still To Do
-----------

**Style Issues**

* Create non-mobile styling
* Small style bugs on goals_list page for 100%+ subscribed goals

**Logic issues**

* Create findable links to user profile page
* User redirect path lost if user does not successfully log in first time

Many other improvements could be made, ranging from creating the components of the site using React to rebuilding the application as a native iOS/android application.
