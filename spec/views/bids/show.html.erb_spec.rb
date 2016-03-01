require 'rails_helper'

RSpec.describe "bids/show", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :opportunity => nil,
      :is_interested => false,
      :is_unsure => false,
      :company => nil,
      :able_to_complete => "Able To Complete",
      :no_bid_reasons => "No Bid Reasons",
      :need_assistance => "Need Assistance"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Able To Complete/)
    expect(rendered).to match(/No Bid Reasons/)
    expect(rendered).to match(/Need Assistance/)
  end
end
