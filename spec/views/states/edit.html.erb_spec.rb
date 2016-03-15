require 'rails_helper'

RSpec.describe "states/edit", type: :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :name => "California",
      :region => "MyString",
      :acronym => "CA"
    ))
  end

  it "renders the edit state form" do
    render

    assert_select "form[action=?][method=?]", state_path(@state), "post" do

      assert_select "input#state_name[name=?]", "state[name]"

      assert_select "input#state_region[name=?]", "state[region]"

      assert_select "input#state_acronym[name=?]", "state[acronym]"
    end
  end
end
