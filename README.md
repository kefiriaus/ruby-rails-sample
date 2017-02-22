# ruby-rails-sample with external api auth

This is a simple Ruby app using the [Rails](http://rubyonrails.org) framework with added login/logout/register/restore_password logic with external API and Devise without using DB.

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io) installed.

```sh
git clone -b external-api-auth git@github.com:kefiriaus/ruby-rails-sample.git ruby-rails-sample-external-api-auth
cd ruby-rails-sample-external-api-auth
bundle install
rails s
```

Your app should now be running on [localhost:3000](http://localhost:3000/).
