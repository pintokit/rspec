require 'rails_helper'

RSpec.describe "states/index", type: :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :name => "Name",
        :region => "Region",
        :acronym => "Acronym"
      ),
      State.create!(
        :name => "Name",
        :region => "Region",
        :acronym => "Acronym"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
  end
end
