require 'rails_helper'

RSpec.describe "states/index", type: :view do
  before(:each) do
    assign(:states, [
      State.create!(
        :name => "California",
        :region => "Region",
        :acronym => "CA"
      ),
      State.create!(
        :name => "New York",
        :region => "Region",
        :acronym => "NY"
      )
    ])
  end

  it "renders a list of states" do
    render
    assert_select "tr>td", :text => "California".to_s, :count => 1
    assert_select "tr>td", :text => "New York".to_s, :count => 1
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "CA".to_s, :count => 1
    assert_select "tr>td", :text => "NY".to_s, :count => 1
  end
end
