class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, limit: 14
      t.string :region, limit: 10
      t.string :acronym, limit: 2

      t.timestamps null: false
    end
  end
end
