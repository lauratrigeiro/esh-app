EducationSuperHighway Coding Challenge
-------------------------------------------------------

### Check out this app: [http://esh-app.herokuapp.com](http://esh-app.herokuapp.com).

I used some of the following tools to solve this challenge:
* Ubuntu 14.04 operating system
* Ruby on Rails to create a single page web app
* PostgreSQL as my relational database for School and SchoolPurchase models
* Mongoid to use a MongoDB NoSQL database for Organization and Purchase models
* seeds.rb and ActiveRecord to read in the SQL file
* rails console to create NoSQL entries using Ruby hashes
* ChartService service class for mathematical calculations
* ChartsController for show and JSON producing actions
* div with a data attribute, AJAX, and jQuery to send server data to javascript file client side
* Google Charts to display data
* CSS and Bootstrap for a little layout styling
* Rails unit tests for models: used test-driven development to add validations to models
* Heroku in production with Unicorn and Mongolab add-ons

### Additional Notes (hopefully this doesn't hurt me, but I'm a learner!)
* In order for the Sql file to be read properly, I had to replace all double quotes with single quotes.
* I had never used a MongoDB database before and spent a good amount of time down a rabbit hole trying to import the seed.js file directly into the rails database. Running 'mongo development "db/seed.js"' in the console brought up the results in the mongo console, but I couldn't get them to show up in the rails console. My next attempt was to convert seed.js into a JSON file and use seeds.rb to read it in. Once again, although seeds.rb seemed to run fine, nothing was reflected in the models in the rails console. Eventually in order to move on I manually entered each organization hash into the console.
* I computed the averages based on the description in the assignment, but I would think a weighted average rather than a mean would be more appropriate. The cheap cost of a very large bandwidth purchase should count for more than a small expensive purchase.
* I chose to test my models rather than the view and controller because it was my first time working with non-relational models and allowed for TDD. I would love to learn more about how NoSQL entries persist during tests compared to SQL ones. Adding the uniqueness validation for 'ben' kept making the tests fail the basic valid? check and definitely did not pass the first time after any save calls. Perhaps this problem could be solved with RSpec, which is at the top of my to-learn list.
* This coding challenge was definitely interesting and brought in a lot of different skills. Thanks for taking the time to read through my code!
- Laura
