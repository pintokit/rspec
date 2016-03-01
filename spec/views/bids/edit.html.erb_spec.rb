require 'rails_helper'

RSpec.describe "bids/edit", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :opportunity => nil,
      :is_interested => false,
      :is_unsure => false,
      :company => nil,
      :able_to_complete => "MyString",
      :no_bid_reasons => "MyString",
      :need_assistance => "MyString"
    ))
  end

  it "renders the edit bid form" do
    render

    assert_select "form[action=?][method=?]", bid_path(@bid), "post" do

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
