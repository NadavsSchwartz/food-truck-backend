## Features
* Uses Redux Thunk middleware to send and receive data from API
* Renders JavaScript and HTML onto the DOM through React components
* Allows for user authentication and authorizes users with sessions
* Users can add and edit recipes

## Tech Used
### Frontend
* React.js 
* Redux 
* Materialize CSS Framework
* React Router
* Styled component

### Backend 
* Ruby 
* Rails - MVC framework used as an API
* Bcrypt - gem used for encryption and securing user passwords
* Rack-cors - allow for cross-origin resource sharing


## Installing

### Backend Installation
* Clone backend repo to local machine `git clone <backend-repo-url>`.
* Run `bundle install` to instal dependencies.
* Run `rails db:create` to create database locally.
* Run `rails db:migrate` to create tables into the database.
* Run `rails db:seed` to create seed data.
* Run `rails s` to run server

### Frontend Installation
* Clone this repo to local machine `git clone <this-repo-url>`.
* Back-end repo: `https://github.com/NadavsSchwartz/food-truck-backend`
* Run `npm install` to install all dependencies.
* Run `npm start` to start server.
