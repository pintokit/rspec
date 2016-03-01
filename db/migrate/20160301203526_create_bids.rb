class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :opportunity, index: true, foreign_key: true
      t.boolean :is_interested
      t.boolean :is_unsure
      t.belongs_to :company, index: true, foreign_key: true
      t.string :able_to_complete
      t.string :no_bid_reasons
      t.string :need_assistance

      t.timestamps null: false
    end
  end
end
