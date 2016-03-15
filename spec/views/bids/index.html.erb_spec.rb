require 'rails_helper'

RSpec.describe "bids/index", type: :view do
  before(:each) do
    @opportunity_1 = Opportunity.new(id: 1)
    @opportunity_2 = Opportunity.new(id: 2)
    @company_1 = Company.new(id: 1)
    @company_2 = Company.new(id: 2)
    assign(:bids, [
      Bid.create!(
        :opportunity => @opportunity_1,
        :is_interested => true,
        :is_unsure => false,
        :company => @company_1,
        :reason_unsure => "Reason Unsure",
        :need_assistance_1 => "Need Assistance 1",
        :need_assistance_2 => "Need Assistance 2",
        :able_to_complete => "Able To Complete",
        :decline_reasons => "Decline Reasons",
        :employee_notes => "Employee Notes"
      ),
      Bid.create!(
        :opportunity => @opportunity_2,
        :is_interested => false,
        :is_unsure => true,
        :company => @company_2,
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
    assert_select "tr>td", :text => @opportunity_1.to_s, :count => 1
    assert_select "tr>td", :text => @opportunity_2.to_s, :count => 1
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => true.to_s, :count => 2
    assert_select "tr>td", :text => @company_1.to_s, :count => 1
    assert_select "tr>td", :text => @company_2.to_s, :count => 1
    assert_select "tr>td", :text => "Reason Unsure".to_s, :count => 2
    assert_select "tr>td", :text => "Need Assistance 1".to_s, :count => 2
    assert_select "tr>td", :text => "Need Assistance 2".to_s, :count => 2
    assert_select "tr>td", :text => "Able To Complete".to_s, :count => 2
    assert_select "tr>td", :text => "Decline Reasons".to_s, :count => 2
    assert_select "tr>td", :text => "Employee Notes".to_s, :count => 2
  end
end
