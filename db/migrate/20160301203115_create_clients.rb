class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, limit: 50
      t.string :address_1, limit: 100
      t.string :address_2, limit: 50
      t.string :city
      t.belongs_to :state, index: true, foreign_key: true
      t.string :zip, limit: 10

      t.timestamps null: false
    end
  end
end
