# Objective
The primary objective of this assignment is to help you get familiar with Ruby on Rails. Specifically, we would be building a simple CRUD Application.

# Assignment Instructions

1. [Install Rails Gem](https://www.linkedin.com/learning/ruby-on-rails-5-essential-training)
2. Clone this repostory ```$ git clone <url>```
3. Design and Develop a Book Collection Application that should have four functionalities - Create, Read, Update, Delete a Book. Step enumerated below:
    * Create a book model with attributes - title (String), author (String), genre (String), price (Number), published-date (String)
    * Make the migrations to create a database table
    * Model your classes adhering to MVC design pattern. 
    * On a high level the application should contain 5 views -
      * HomePage - Servers two purpose, first is to view all books, second is to contain handlers (button) to perform the CRUD functions.
      * Add a Book Page - contain a form with the configuration options, Note: published-date and genre should be drop-down menus.
      * Update a Book Page - prepopulated with the current details and can be updated.
      * Show Details Page - to view the details of the book.
      * Delete Page - should contain a confirmation message.
    * There should also be a flash notice popping up on the HomePage after performing each operation. 
    * All the pages should have a link to the HomePage and the routes should be resourceful - REST Guidelines)
4. Add your changes to the staging area ```$ git add .```
5. Commit your changes ```$ git commit -m "your commit message"```
6. Push the changes ```$ git push <remote> <branch>```
  
# References that could be useful
[Ruby On Rails Linkedin](https://www.linkedin.com/learning/ruby-on-rails-5-essential-training)

[Ruby On Rails - HTTP, MVC and Routes](https://medium.com/the-renaissance-developer/ruby-on-rails-http-mvc-and-routes-f02215a46a84)
