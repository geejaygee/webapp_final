class CreateMboards < ActiveRecord::Migration
  def change
    create_table :mboards do |t|
      t.integer :price
      t.string :name

      t.timestamps null: false
    end
  end
end
