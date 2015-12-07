class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.references :user, index: true, foreign_key: true
      t.references :gcard, index: true, foreign_key: true
      t.references :cpu, index: true, foreign_key: true
      t.references :mboard, index: true, foreign_key: true
      t.references :case, index: true, foreign_key: true
      t.string :quality
      t.integer :price

      t.timestamps null: false
    end
  end
end
