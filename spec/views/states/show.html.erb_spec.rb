require 'rails_helper'

RSpec.describe "states/show", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :name => "California",
      :region => "Region",
      :acronym => "CA"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/California/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/CA/)
  end
end
