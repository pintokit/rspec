require 'rails_helper'

RSpec.describe "bids/show", type: :view do
  before(:each) do
    @bid = assign(:bid, Bid.create!(
      :opportunity => @opportunity_1,
      :is_interested => false,
      :is_unsure => false,
      :company => @company_1,
      :reason_unsure => "Reason Unsure",
      :need_assistance_1 => "Need Assistance 1",
      :need_assistance_2 => "Need Assistance 2",
      :able_to_complete => "Able To Complete",
      :decline_reasons => "Decline Reasons",
      :employee_notes => "Employee Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Opportunity/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Reason Unsure/)
    expect(rendered).to match(/Need Assistance 1/)
    expect(rendered).to match(/Need Assistance 2/)
    expect(rendered).to match(/Able To Complete/)
    expect(rendered).to match(/Decline Reasons/)
    expect(rendered).to match(/Employee Notes/)
  end
end
