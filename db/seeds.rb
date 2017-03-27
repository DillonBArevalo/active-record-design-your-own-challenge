require_relative '../app/models/hacker.rb'
require_relative '../app/models/favorite_quote.rb'
require_relative '../app/models/quote.rb'
require_relative '../app/models/address.rb'
require 'faker'

30.times {Quote.create(body: Faker::Hacker.say_something_smart, author: Faker::Name.name)}
10.times {Address.create(city: Faker::Address.city, state: Faker::Address.state, street_address: Faker::Address.street_address)}
addresses = Address.all
30.times {Hacker.create(name: Faker::Name.name, title: Faker::Name.title, address_id: addresses.sample.id)}
hackers = Hacker.all
quotes = Quote.all
50.times {FavoriteQuote.create(quote_id: quotes.sample.id, hacker_id: hackers.sample.id)}
