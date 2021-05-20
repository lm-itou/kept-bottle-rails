# kept-bottle-rails

On RaspberryPi(ruby:2.5, rails:6.1). Created new project.

```
rails new kept-bottle-rails --minimal --database=postgresql
```

Added gem. Also activated active_storage.

```
gem 'devise', '~> 4.7'
```

```
rails g devise:install
rails g devise user
rails g scaffold bottle restaurant_id:integer user_id:integer status
rails g scaffold restaurant name geo user_id:integer
```

modify user's migration file.

```
rails db:create db:migrate
```

