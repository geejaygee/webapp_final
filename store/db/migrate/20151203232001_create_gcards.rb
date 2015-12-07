class CreateGcards < ActiveRecord::Migration
  def change
    create_table :gcards do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
