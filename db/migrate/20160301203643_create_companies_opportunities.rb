class CreateCompaniesOpportunities < ActiveRecord::Migration
  def change
    create_table :companies_opportunities do |t|
      t.belongs_to :company, index: true, foreign_key: true
      t.belongs_to :opportunity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
