require 'rails_helper'

RSpec.describe "bids/new", type: :view do
  before(:each) do
    assign(:bid, Bid.new(
      :opportunity => nil,
      :is_interested => false,
      :is_unsure => false,
      :company => nil,
      :reason_unsure => "MyString",
      :need_assistance_1 => "MyString",
      :need_assistance_2 => "MyString",
      :able_to_complete => "MyString",
      :decline_reasons => "MyString",
      :employee_notes => "MyString"
    ))
  end

  it "renders new bid form" do
    render

    assert_select "form[action=?][method=?]", bids_path, "post" do

      assert_select "input#bid_opportunity_id[name=?]", "bid[opportunity_id]"

      assert_select "input#bid_is_interested[name=?]", "bid[is_interested]"

      assert_select "input#bid_is_unsure[name=?]", "bid[is_unsure]"

      assert_select "input#bid_company_id[name=?]", "bid[company_id]"

      assert_select "input#bid_reason_unsure[name=?]", "bid[reason_unsure]"

      assert_select "input#bid_need_assistance_1[name=?]", "bid[need_assistance_1]"

      assert_select "input#bid_need_assistance_2[name=?]", "bid[need_assistance_2]"

      assert_select "input#bid_able_to_complete[name=?]", "bid[able_to_complete]"

      assert_select "input#bid_decline_reasons[name=?]", "bid[decline_reasons]"

      assert_select "input#bid_employee_notes[name=?]", "bid[employee_notes]"
    end
  end
end
