class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :opportunity, index: true, foreign_key: true
      t.belongs_to :company, index: true, foreign_key: true
      t.boolean :is_interested
      t.boolean :is_unsure
      t.string :reason_unsure
      t.string :decline_reasons
      t.string :need_assistance_1
      t.string :need_assistance_2
      t.string :able_to_complete
      t.datetime :contacted
      t.string :employee_notes

      t.timestamps null: false
    end
  end
end
