# Pick-and-Choose

## ![Project Online Proposal](https://docs.google.com/document/d/13t5k4U9_sEiH1fDI6qLfmrCFykl8EG3NZqh1yU9t8vc/edit)

## Project Description
To give or sell things you don’t need on the web. Get things you need for free or in cheap prices.  Easy to search, filter, discover stuffs around you based on geolocation.

## Members

| ![autekroy]() | ![]() | ![]() | ![]() |
| :------------: | :------------: | :------------: | :------------: |
| Yao-Jen Chang | |  |  |
| [@autekroy](https://github.com/autekroy) | |  | |


## Pivotal Tracker Link
https://www.pivotaltracker.com/n/projects/1446768

## Dev Memo

#### Common rake commands
- `rake db:migrate`
  - run the required migrations until it has reached the specified version
- `rake db:rollback`
  - rollback the last migration
- `rake db:setup`
  - create the database, load the schema and initialize it with the seed data
- **`rake db:reset`**
  - drop the database and set it up again. equivalent to `rake db:drop db:setup`
- `rake db:migrate`
  - runs the change method for all the migrations that have not yet been run
