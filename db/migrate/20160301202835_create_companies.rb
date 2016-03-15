class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, limit: 50
      t.string :entity_number, limit: 50
      t.string :address_1, limit: 100
      t.string :address_2, limit: 50
      t.string :city
      t.belongs_to :state, index: true, foreign_key: true
      t.string :zip, limit: 10
      t.string :business_structure
      t.integer :year_established
      t.integer :number_of_employees
      t.decimal :last_year_sales
      t.text :counties
      t.decimal :general_liability_insurance_amount
      t.decimal :contract_dollars_level_interest_min
      t.decimal :contract_dollars_level_interest_max
      t.text :nature_of_business
      t.boolean :is_union_contractor
      t.string :bonding_capacity
      t.string :type_of_construction

      t.timestamps null: false
    end
  end
end
