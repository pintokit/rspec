class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.belongs_to :company, index: true, foreign_key: true, null: false, default: 1
      t.string :first_name, limit: 30, null: false
      t.string :last_name, limit: 30, null: false
      t.string :title, limit: 50
      t.string :address_1, limit: 100
      t.string :address_2, limit: 50
      t.string :city
      t.belongs_to :state, index: true, foreign_key: true
      t.string :zip, limit: 10
      t.integer :mobile_number, limit: 8
      t.integer :office_number, limit: 8
      t.integer :extension, limit: 8
      t.integer :fax_number, limit: 8
      t.string :gender
      t.string :ethnicity
      t.string :veteran_status

      t.timestamps null: false
    end
  end
end
