# ruby-rails-sample with external api auth

This is a simple Ruby app using the [Rails](http://rubyonrails.org) framework with added login/logout/register/restore_password logic with external API and Devise without using DB.

## Versions

- [Admin version](https://github.com/kefiriaus/ruby-rails-sample/tree/master)
- [Landing page with external auth API](https://github.com/kefiriaus/ruby-rails-sample/tree/external-api-auth)

## Landing page with external auth API

Added gems:
```ruby
# Add compatibility with jquery
gem 'jquery-turbolinks', '~> 2.1'

# Auth
gem 'devise'
gem 'devise-i18n'

# Email validator
gem 'validates_email_format_of'

# Error pages
gem 'gaffe'
```

Added development gems:
```ruby
gem "better_errors"
gem "binding_of_caller"

gem 'rubocop' # to check Ruby code
gem 'scss-lint' # to check SCSS code

gem 'phare' # check for coding style errors
```

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io) installed.

```sh
git clone -b external-api-auth git@github.com:kefiriaus/ruby-rails-sample.git ruby-rails-sample-external-api-auth
cd ruby-rails-sample-external-api-auth
bundle install
rails s
```

Your app should now be running on [localhost:3000](http://localhost:3000/).

## Added controller methods

```ruby
user_signed_in? # Checking user authorization

current_user # Add @current_user variable
```

## Added view helpers

```ruby
user_signed_in?
```