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

### 6. unit test
  * `cd test`
  * `ruby -I. models/pickup_test.rb `: create one pickup and delete it

### Reference
 1. [Gem guides](http://guides.rubygems.org/command-reference/)
 2. [Rails guides](http://guides.rubyonrails.org/command_line.html)