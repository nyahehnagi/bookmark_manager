# Bookmark Manager

This is a bookmark manager for people

# Installing the database

- Connect to psql
- Create the database using the psql command `CREATE DATABASE bookmark_manager;`
- Connect to the database using the pqsl command `\c bookmark_manager;`
- Run the query we have saved in the file 01_create_bookmarks_table.sql

# Setting up the test database
connect to psql prompt either as your current user or admin.
Be mindful  how you are connected, if you connect to a database and not as admin you will
need to switch between databases after creating the test database. use `\connect bookmark_manager_test;` if needs be
~~~~
$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
~~~~

## Installation
----------------------
Install gems with [bundler](https://bundler.io/ "bundler") 
~~~~
bundle install 
~~~~
To install code from the latest source
~~~~
Add link here
~~~~
## Testing
-----------------------
To run rspec tests
~~~~
rspec
~~~~
from the root directory of the installation 

## Running the webserver locally
-----------------------
To run a locally hosted server of the site
~~~~
rackup
~~~~
from the root directory of the installation

Navigate to http://localhost:9292/


## User Stories
Stakeholder, Motivation and Task

as a user
so I can keep track of my reading
I want to see a list of bookmarks

https://github.com/makersacademy/course/blob/main/bookmark_manager/walkthroughs/01.md

