class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
