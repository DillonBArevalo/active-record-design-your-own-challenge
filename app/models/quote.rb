require_relative '../../db/config'

class Quote < ActiveRecord::Base
  has_many :favorite_quotes
  has_many :hackers, through: :favorite_quotes
end
