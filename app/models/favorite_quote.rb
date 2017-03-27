require_relative '../../db/config'

class FavoriteQuote < ActiveRecord::Base
  belongs_to :hacker
  belongs_to :quote
end
