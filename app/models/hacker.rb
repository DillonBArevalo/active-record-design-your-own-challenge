require_relative '../../db/config'

class Hacker < ActiveRecord::Base
  belongs_to :address
  has_many :favorite_quotes
  has_many :quotes, through: :favorite_quotes

  validates :name, presence: true
end
