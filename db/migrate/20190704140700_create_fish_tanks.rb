class CreateFishTanks < ActiveRecord::Migration[5.2]
  def change
    create_table :fish_tanks do |t|
      t.integer :tank_id
      t.integer :fish_id

      t.timestamps
    end
  end
end
