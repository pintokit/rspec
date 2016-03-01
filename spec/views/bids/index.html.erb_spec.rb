require 'rails_helper'

RSpec.describe "bids/index", type: :view do
  before(:each) do
    assign(:bids, [
      Bid.create!(
        :opportunity => nil,
        :is_interested => false,
        :is_unsure => false,
        :company => nil,
        :able_to_complete => "Able To Complete",
        :no_bid_reasons => "No Bid Reasons",
        :need_assistance => "Need Assistance"
      ),
      Bid.create!(
        :opportunity => nil,
        :is_interested => false,
        :is_unsure => false,
        :company => nil,
        :able_to_complete => "Able To Complete",
        :no_bid_reasons => "No Bid Reasons",
        :need_assistance => "Need Assistance"
      )
    ])
  end

  it "renders a list of bids" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Able To Complete".to_s, :count => 2
    assert_select "tr>td", :text => "No Bid Reasons".to_s, :count => 2
    assert_select "tr>td", :text => "Need Assistance".to_s, :count => 2
  end
end
