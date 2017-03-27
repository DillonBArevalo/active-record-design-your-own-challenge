require_relative '../../db/config'

class FavoriteQuote < ActiveRecord::Base
  belongs_to :hacker
  belongs_to :quote

  validates :quote_id, presence: true
  validates :hacker_id, presence: true
end
