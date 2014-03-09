# Omniauth Delivery

This is a Omniauth strategy for Delivery.com. I know that there is another [omniauth strategy](https://github.com/cubi76041/omniauth-delivery), except that it doesn't work (as of 3/4/14 getting the raw_info throws a ssl error), and I believe this is more organized. Nicer commits, more instructions, etc. Nicer person too :) 

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-delivery-food'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-delivery-food

## Notes

So as far as I can tell, there is no clear-cut way of getting info about a user. So what is returned as the `name` and `uid` is just the token. I've tried hitting the Laundry API endpoint and it throws an SSL error. If anyone knows how to fix that, make a pull request fixing it. 

I know that there is a sandboxed version of Delivery, but I haven't used it, so I didn't include it this time around. Feel free to make a pull request adding that in.

Delivery.com requires a client key and a secret key, which can be obtained by [signing up](http://developers.delivery.com/sign-up/). 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
