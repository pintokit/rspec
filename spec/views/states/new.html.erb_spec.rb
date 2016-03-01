require 'rails_helper'

RSpec.describe "states/new", type: :view do
  before(:each) do
    assign(:state, State.new(
      :name => "MyString",
      :region => "MyString",
      :acronym => "MyString"
    ))
  end

  it "renders new state form" do
    render

    assert_select "form[action=?][method=?]", states_path, "post" do

      assert_select "input#state_name[name=?]", "state[name]"

      assert_select "input#state_region[name=?]", "state[region]"

      assert_select "input#state_acronym[name=?]", "state[acronym]"
    end
  end
end
