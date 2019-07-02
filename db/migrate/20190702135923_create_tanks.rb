class CreateTanks < ActiveRecord::Migration[5.2]
  def change
    create_table :tanks do |t|
      t.string :name
      t.integer :money, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
