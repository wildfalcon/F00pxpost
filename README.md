# F00pxpost

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'F00pxpost'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install F00pxpost

## Usage

in "config/initializers/f00pxpost.rb"

```ruby
F00pxpost.setup do |config|
  config.consumer_key = <key>
  config.consumer_secret = <secret>
end
```

Then create a client with

```ruby
client = F00pxpost::Client.new(<token>, <token_secret>)
client.post_photo(file, "Self Portrait", "This is a self portrait", 7)	
```

The last argument is the category id (https://github.com/500px/api-documentation/blob/master/basics/formats_and_terms.md#categories)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
