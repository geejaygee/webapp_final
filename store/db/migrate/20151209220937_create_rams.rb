class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
