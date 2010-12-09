bucks
=====

Bucks lets you find what currency is used on any country. Given a country, it returns the [ISO 4217 code](http://www.xe.com/iso4217.php) of the currency used there.

    > Bucks::Currency.find("Colombia")
    => :COP
    > Bucks::Currency.find("France")
    => :EUR 
    > Bucks::Currency.find("United States")
    => :USD
    > Bucks::Currency.find("United Kingdom")
    => :GBP    
    > Bucks::Currency.find("Unicornland")
    => nil     

The list of supported countries matches that of the [country_select plugin](https://github.com/rails/country_select) for Rails. Check [this file](https://github.com/andmej/bucks/blob/master/lib/bucks/currency.rb) to see the complete list of countries.

I suggest to pair this gem with [mumboe-currency](https://github.com/mumboe/currency). That way, you can do stuff like:

    > iso_code = Bucks::Currency.find("Israel")
    => :ILS 
    > Currency.Money("1,203.43", iso_code).to_s
    => "₪1,203.43 "
    > iso_code = Bucks::Currency.find("Germany")
    => :EUR
    > Currency.Money("1,203.43", iso_code).to_s    
    => "€1,203.43"
    
Installation
===
 
    gem install bucks

or if you are using Bundler, add this line to your Gemfile:

    gem "bucks"


Contributing to bucks
====
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
===

Copyright (c) 2010 Andrés Mejía. See LICENSE.txt for
further details.

