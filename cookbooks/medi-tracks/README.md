# medi-tracks

A chef cookbook with recipes needed to deploy the Ruby on Rails application Tracks to a
server running Ubuntu 14.04 LTS server with a minimal installation (base operating system + ssh).
Tracks is a personal "Getting Things Done" application written in Ruby on Rails, made open source.

Requirements:
* Use whatever chef workflow works best for you when developing the recipe.
* Tracks' installation instructions and manual are located on the web:
http://www.getontracks.org/manual/

* For the sake of simplicity, use MySQL or MariaDB. If you LIKE, you can also use PostgreSQL
* Run an nginx reverse proxy in front of the
Rails application:

      Client --(Network)--> nginx:80 --> localhost:3000


* Run everything on system startup ( runit works great with Rails applications, but choose whatever
you like)

* Secure the OS as you see fit
