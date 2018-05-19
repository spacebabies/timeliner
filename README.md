# Timeliner

Keep track of activities in a Rails app.

I use it to store activities; both for auditing in case someone does something
bad, and for showing folks what's buzzing over here.

I looked at [Public Activity](https://github.com/chaps-io/public_activity) but
when I saw it doesn't work on Rails 5 and has a bunch of open issues, I just
went ahead and created something similar.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'timeliner'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timeliner

Copy the included migrations to your main app:

```
bin/rails timeliner:install:migrations
```

## Usage

A `TrackingConcern` injects itself into ActionController::Base, which makes it
globally available. Track a thing in a controller like so:

```
track @course, 'course.created'
```

You are not meant to track the _person_, because we figure out who the current
user is automatically. You're meant to track the thing that's changed.

To track something outside of a controller, use this:

```
Timeliner.track @course, 'course.created'
```

This will not figure out the current user though. To keep record of
whodunnit, pass them as the third parameter:

```
Timeliner.track @course, 'course.created', current_user
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/spacebabies/timeliner. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Timeliner project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/timeliner/blob/master/CODE_OF_CONDUCT.md).
