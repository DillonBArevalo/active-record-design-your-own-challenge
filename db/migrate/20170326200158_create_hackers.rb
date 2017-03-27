class CreateHackers < ActiveRecord::Migration
  def change
    create_table :hackers do |t|
      t.text :name
      t.text :title
      t.integer :address_id

      t.timestamps
    end
  end
end
