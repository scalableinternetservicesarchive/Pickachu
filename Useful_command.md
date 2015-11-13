## useful command reminder

#### 1. After dealing with data base, you have to rake again. 
  * `gem install bundler` (first time)
  * `bundle install` (first time)
  * `bundle exec rake db:create`

#### 2. your active rake version is not what you need. 
  * Even you have alreay installed the version you need.
  * `gem list rake ` see rake version
  * `gem uninstall rake` remove the version you don't need 
  * `bundle update rake`


### 3. update
  * `bundle install`
  * `rake db:migrate`
  * `rails server`

### 4. drop table
  * `rails console`
  * `ActiveRecord::Migration.drop_table(:users)`

### 5. undo to previous push (can't go back!)
  * `git reset --hard <commit_id>`
  * `git push origin HEAD --force`

### 6. unit test:
  * `cd test`
  * `ruby -I. models/pickup_test.rb `: create one pickup and delete it
  * from http://stackoverflow.com/questions/3950768/rails-tests-cant-find-test-helper

### 7. about database: how to destroy db
`By issuing rake -T you have the following database tasks:

rake db:create          # Create the database from DATABASE_URL or config/database.yml for the current Rails.env (use db:create:all to create all dbs in the config)
rake db:drop            # Drops the database using DATABASE_URL or the current Rails.env (use db:drop:all to drop all databases)
rake db:fixtures:load   # Load fixtures into the current environment's database
rake db:migrate         # Migrate the database (options: VERSION=x, VERBOSE=false)
rake db:migrate:status  # Display status of migrations
rake db:rollback        # Rolls the schema back to the previous version (specify steps w/ STEP=n)
rake db:schema:dump     # Create a db/schema.rb file that can be portably used against any DB supported by AR
rake db:schema:load     # Load a schema.rb file into the database
rake db:seed            # Load the seed data from db/seeds.rb
rake db:setup           # Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the db first)
rake db:structure:dump  # Dump the database structure to db/structure.sql
rake db:version         # Retrieves the current schema version number
So to issue bundle exec rake db:drop:all and if you want to remove all the migrations, and assuming you want to remove only the migrations, delete them and write new ones.

If you want to change your models too, use rails d model.`


### 8. about mysql
mysqladmin -u root -p status

sudo ln -s /tmp/mysql.sock /var/mysql/mysql.sock

sudo vim /usr/local/mysql/my.cnf

mysqld --help --verbose

export PATH=${PATH}:/usr/local/mysql/bin


### Reference
 1. [Gem guides](http://guides.rubygems.org/command-reference/)
 2. [Rails guides](http://guides.rubyonrails.org/command_line.html)