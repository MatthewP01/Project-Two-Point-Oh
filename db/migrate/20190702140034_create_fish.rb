class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :tank_id

      t.timestamps
    end
  end
end
