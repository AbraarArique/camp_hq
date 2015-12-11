# Camp HQ

## Introduction

Camp HQ is a team and project management based web app built using Ruby on Rails. It's core features are the following:

  - Create "Users" for each member on your project
  - Create a "Task" for each work needed to be completed
  - Assign one or more users to a task
  - Assign one or more tasks to a user
  - Keep track of which users get which tasks and vice-versa
  - Monitor tasks and see their progress (pending or completed)
  - If a user can't complete a task, then remove him from that task and assign a new user to that task to complete it
  - Supports creating, editing and deleting of "Users" and "Tasks"

---

This app is built using:

  - Ruby 2 (managed by RVM)
  - Ruby on Rails 4
  - PostgreSQL
  - Haml
  - Sass
  - CoffeeScript
  - jQuery
  - Zurb Foundation
  - RSpec, Capybara and FactoryGirl for testing
  - Heroku
  - Icons from Font Awesome

## Installation Instructions:

  - Make sure you have Ruby and Ruby on Rails installed
  - Clone this repository into your local machine:

    ```
    $ git clone https://github.com/AbraarAriquePro/camp_hq.git
    ```
  - Then change to the directory you just cloned:

    ```
    $ cd camp_hq
    ```
  - Install all the Gems and their dependencies

    ```
    $ bundle install
    ```
  - Edit `database.yml` and add your own PostgreSQL username, password and other configurations
  - Edit `secrets.yml` and add your own secrets key. You can generate Rails secrets keys by running `rake secret`
  - Setup and migrate the database:

    ```
    $ rake db:setup
    ```
  - Precompile the assets:

    ```
    $ rake assets:precompile
    ```
  - Finally, fire up the WEBrick server

    ```
    $ rails server
    ```

Once the server is up and ready to receive connections, visit [http://localhost:3000/](http://localhost:3000) in your browser and you'll see the app up and running.

## Contributing:
This app is open for community contributions. Please follow the rules bellow to contribute:

  - Fork this project
  - Clone the forked project into your local machine
  - Create a new branch, give it a name that reflects the feature you're working on
  - Do work and commit the changes
  - Push the changes up to your forked repository
  - Open a Pull Request from the master branch
