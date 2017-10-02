
# _Volunteer Tracker_

#### By _**Tyler Miller**_

## Description

_The volunteer tracker allows a manager to enter projects and volunteers, and to assign each volunteer to a project._

## Setup/Installation Requirements

* _Open terminal_
* _Clone
* _Open new terminal window or tab_
* _Make sure Postgres is installed
* _In terminal, type the following commands_
* _'postgres'_
* _'CREATE DATABASE volunteer_tracker;'_
* _'\c volunteer_tracker'_
* _'CREATE TABLE projects(id serial PRIMARY KEY, name varchar);'_
* _'CREATE TABLE volunteers(id serial PRIMARY KEY, first_name varchar, last_name varchar, project_id int);'_
* _run 'bundle install'_
* _While still in the project folder, run 'ruby app.rb'_
* _Open Google Chrome and type in 'http://localhost:4567/' in the address bar_

## Known bugs

## Technologies Used

_Ruby, Sinatra, Postgresql_
