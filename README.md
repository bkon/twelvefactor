# Twelvefactor

This gem is a base for several other gems which are intended to
simplify configuring your application in 12-factor way though
environment variables.

- `twelvefactor-cache`
- `twelvefactor-mailer`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'twelvefactor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twelvefactor

## Usage

Normally you do not need to use this gem directly, unless you're
writing a plugin for it.

### Environment plugins

```
class Twelvefactor::Environment::Foo
  def self.apply app, url
    app.config.important_setting = {
      type: url.protocol,
      server: url.host
    }
  end
end
```

Add your custom class to the `Twelfactor::Environment` namespace; core
gem will detect `<CLASS_NAME>_URL` environment varialbe and call your
class' `apply` method with Rails app and parsed url value as
parameters.

```
FOO_URL=protocol://sample.host
```

If no environment variable present, your plugin is not called.

## Development

After checking out the repo, run `bin/setup` to install
dependencies. Then, run `rake spec` to run the tests. You can also run
`bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake
install`.  To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will
create a git tag for the version, push git commits and tags, and push
the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/bkon/twelvefactor.  This project is intended to be
a safe, welcoming space for collaboration, and contributors are
expected to adhere to the
[Contributor Covenant](http://contributor-covenant.org) code of
conduct.

## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
