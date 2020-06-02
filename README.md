
#USER STORIES

```
As a user,
in order that I can see my bookmarks
I would like have the possibility to access a bookmarks list
```
```
As a user,
In order that I can quickly access websites I like.
I would like to be able to add new bookmarks to the list
```
```
As a user,
so that I can stop seeing a website that is no longer of interest
I would like to be able to remove it from the list
```
```
As a user,
so that I can continue accessing the website after a URL change
I would like to be able to update my list
```
```
As a user,
so that I take notes about a specific website
I would like to be able to comment on my bookmarks
```
```
As a user,
so that I access websites based on their content
I would like to be able to tag bookmarks into categories
```
```
As a user,
so that I can view only a list of websites belonging to a category
I would like to be able to filter by Tag
```
```
As a developer,
so that users can access and modify only their own bookmarks
I would like to restrict their access only to their personal bookmarks
```
# Domain Model Diagram

![bookmark_diagram](https://github.com/BeneArinci/Bookmark-manager/blob/master/Screenshot%202020-06-01%20at%2014.48.13.png)

# How to Setup Your Database

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
