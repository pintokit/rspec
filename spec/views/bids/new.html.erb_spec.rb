require 'rails_helper'

RSpec.describe "bids/new", type: :view do
  before(:each) do
    assign(:bid, Bid.new(
      :opportunity => nil,
      :is_interested => false,
      :is_unsure => false,
      :company => nil,
      :able_to_complete => "MyString",
      :no_bid_reasons => "MyString",
      :need_assistance => "MyString"
    ))
  end

  it "renders new bid form" do
    render

    assert_select "form[action=?][method=?]", bids_path, "post" do

      assert_select "input#bid_opportunity_id[name=?]", "bid[opportunity_id]"

      assert_select "input#bid_is_interested[name=?]", "bid[is_interested]"

      assert_select "input#bid_is_unsure[name=?]", "bid[is_unsure]"

      assert_select "input#bid_company_id[name=?]", "bid[company_id]"

      assert_select "input#bid_able_to_complete[name=?]", "bid[able_to_complete]"

      assert_select "input#bid_no_bid_reasons[name=?]", "bid[no_bid_reasons]"

      assert_select "input#bid_need_assistance[name=?]", "bid[need_assistance]"
    end
  end
end
