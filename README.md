# Professionali GitHub

This is the Professionali strategy for authenticating to Professionali.ru. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Professionali Applications Page](http://dev.professionali.ru).

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-professionali'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-professionali

## Usage

    use OmniAuth::Builder do
      provider :professionali, ENV['PROFESSIONALI_KEY'], ENV['PROFESSIONALI_SECRET']
    end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
