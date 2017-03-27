require_relative '../../db/config'

class Address < ActiveRecord::Base
  has_many :hackers
end
