class CreateHarddrives < ActiveRecord::Migration
  def change
    create_table :harddrives do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
