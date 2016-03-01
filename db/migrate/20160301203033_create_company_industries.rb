class CreateCompanyIndustries < ActiveRecord::Migration
  def change
    create_table :company_industries, id: false do |t|
      t.belongs_to :company, index: true, foreign_key: true
      t.belongs_to :industry, index: true, foreign_key: true
    end
  end
end
