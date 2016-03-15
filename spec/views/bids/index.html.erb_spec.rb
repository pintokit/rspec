require 'rails_helper'

RSpec.describe "bids/index", type: :view do
  before(:each) do
    assign(:bids, [
      Bid.create!(
        :opportunity => nil,
        :is_interested => false,
        :is_unsure => false,
        :company => nil,
        :reason_unsure => "Reason Unsure",
        :need_assistance_1 => "Need Assistance 1",
        :need_assistance_2 => "Need Assistance 2",
        :able_to_complete => "Able To Complete",
        :decline_reasons => "Decline Reasons",
        :employee_notes => "Employee Notes"
      ),
      Bid.create!(
        :opportunity => nil,
        :is_interested => false,
        :is_unsure => false,
        :company => nil,
        :reason_unsure => "Reason Unsure",
        :need_assistance_1 => "Need Assistance 1",
        :need_assistance_2 => "Need Assistance 2",
        :able_to_complete => "Able To Complete",
        :decline_reasons => "Decline Reasons",
        :employee_notes => "Employee Notes"
      )
    ])
  end

  it "renders a list of bids" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Reason Unsure".to_s, :count => 2
    assert_select "tr>td", :text => "Need Assistance 1".to_s, :count => 2
    assert_select "tr>td", :text => "Need Assistance 2".to_s, :count => 2
    assert_select "tr>td", :text => "Able To Complete".to_s, :count => 2
    assert_select "tr>td", :text => "Decline Reasons".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Notes".to_s, :count => 2
  end
end
