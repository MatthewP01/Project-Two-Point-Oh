class CreateDecorationTanks < ActiveRecord::Migration[5.2]
  def change
    create_table :decoration_tanks do |t|
      t.integer :decoration_id
      t.integer :tank_id

      t.timestamps
    end
  end
end
