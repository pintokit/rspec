class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.belongs_to :client, index: true, foreign_key: true
      t.string :project_name
      t.string :project_owner
      t.boolean :union_contract
      t.string :city
      t.belongs_to :state, index: true, foreign_key: true
      t.string :contact_name
      t.integer :contact_phone, limit: 8
      t.integer :contact_fax, limit: 8
      t.string :contact_email
      t.datetime :bid_date
      t.text :trades_solicited
      t.text :project_description
      t.text :bid_instructions
      t.string :project_url

      t.timestamps null: false
    end

    create_table :certifications_opportunities, id: false do |t|
      t.belongs_to :opportunity, index: true
      t.belongs_to :certification, index: true
    end
  end
end
