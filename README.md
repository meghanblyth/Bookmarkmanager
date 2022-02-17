# Bookmark Challenge

This challenge is to create a library of useful bookmarks

## Motivation
Weekly challenge Week 4

## Ruby version
 
## Creators


## How to use the SQL file 

Connect to psql create a database using the command CREATE DATABASE bookmark_manager
Connect to database \c bookmark_manager 
Run the query 01_create_bookmarks_table.sql

# Setting up the test database
connect to psql prompt either as your current user or admin.
Be mindful  how you are connected, if you connect to a database and not as admin you will
need to switch between databases after creating the test database. use `\connect bookmark_manager_test;` if needs be
~~~~
$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
~~~~

# *** USER STORY *** 

As a user\
So that I can see a bookmark\ 
I would like the app to show a list of bookmarks\

As a user\
So that I can add a bookmark\
I would like to be able to add new bookmarks and see a confirmation\





