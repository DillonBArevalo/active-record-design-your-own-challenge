class CreateFavoriteQuotes < ActiveRecord::Migration
  def change
    create_table :favorite_quotes do |t|
      t.integer :quote_id
      t.integer :hacker_id
    end
  end
end
