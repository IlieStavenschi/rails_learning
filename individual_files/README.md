# README

# Model View Controller(MVC)
Separation of presentation layer (what the user of the application sees in the browser/mobile device)
and the business-logic or back-end (invisible layer)

1. Model
Model are resources in my app, like users' blog posts, articles, friends, job stocks.
Model => User, Post, Article etc.
i.e. A user model will use a user table
Models are used to communicate with the tables from the application

2. View
View make up the front end of my app. Visible layer of my app, the interface. They are used as html.erb
.erb allows to embed the ruby code in the html(view).
View => home.html.erb, new.html.erb, friends.html.erb

3. Controller
Controller is also a part of back end, and it is considered as the brain of the application.
Controller is responsible for how user requests are handled and routhed within the application.
Controller => users_controller, posts_controller, articles_controller etc.

To generate a controller I have to write in the command terminal following prompt:
* rails generate controller [controller_name] 

# GENERAL FLOW OF RAILS APPLICATION:

MVC - Model, View, Controller

-> Request made at browser i.e: localhost:3000

-> Request received at router of rails application i.e: root 'pages' (pages_controller.rb)

-> Request routed to appropriate action in a controller i.e: #home (method from controller)

-> Controller#action either renders a view template or communicates with model i.e: We need manually to create in the views directory the page with the same name as action in controller (home.html.erb). In the view we need to write what we want to display in interface (Hello world!)

-> Model communicates with database

-> Model sends back information to controller

-> Controller renders view

# Routes

Routes is used to define the application routes. Inside the routes we need to
make reference to our controllers, in the controllers we need to define the right methods.
i.e. In the routes, in the body of the block, we write root 'application#hello', where:
1. root = the method
2. 'pages = file name of the controller from config directory
3. #hello' = name of the method from the controller

# Conventional Expectations

1. Define a route that points to a controller#action.
2. Have an appropriately named controller, for example: if dealing with layouts or static  pages of the application, a name could be pages_controller
3. Have an appropriately named action, for example: if dealing with a homepage, the action/method could be named 'home'
4. If done this way, under views, rails will expect a pages folder (named for the pages controller) and a home.html.erb template (named for the home action)

# Structure of Rails application

app
  assets - Place to store static images or stylesheets.
    images - Upload images that will be used in the layout of the application, not the ones uploaded by the user
    stylesheets - There will be stored all our css (Interface)
  channles - Place where we will work with Application Cable, which makes Real-Time Communications available in our Rails application (Chat app)
  controllers - Place for all our controllers. 
  helpers - Place for helper methods or functions that we will use in our view templates.
  javascript - the file allow to use js through the application
  models - there is stored all our models
  views -> layouts -> application.html.erb - This file is where all our views get served through in our application

config
  configuration of the different envirnoments, credentials, routes etc.

db
  here we will dev and test and will save our data by using tables

# Version Control with Git

Track files
We start the version controll process by tracking the files and folders in the application. 
When we start tracking is when the initial state of the application will be.
Usually this is done as soon as the application is created.

Make commits
When we make changes to our code or add new code/files/folders etc. we add (if we choose) the new files/folders to track as well.
Once we're happy with our new changes. We make a 'commit' of our code.
'Commits' include a helpful message as well with information about the code being saved or committed.
Every time you make a commit. It copies and saves how your app looks at the time of that commit.

Commit history
Now, we will have a history of our past commits. And then if necessary, we can 'revert' our changes and go back to an earlier version of our code.
Test