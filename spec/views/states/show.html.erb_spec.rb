require 'rails_helper'

RSpec.describe "states/show", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :name => "Name",
      :region => "Region",
      :acronym => "Acronym"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Acronym/)
  end
end
