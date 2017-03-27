class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :city
      t.text :state
      t.text :street_address

      t.timestamps
    end
  end
end
