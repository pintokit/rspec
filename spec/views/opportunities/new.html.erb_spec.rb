require 'rails_helper'

RSpec.describe "opportunities/new", type: :view do
  before(:each) do
    assign(:opportunity, Opportunity.new(
      :client => nil,
      :project_name => "MyString",
      :project_owner => "MyString",
      :union_contract => false,
      :city => "MyString",
      :state => nil,
      :contact_name => "MyString",
      :contact_phone => 1,
      :contact_fax => 1,
      :contact_email => "MyString",
      :trades_solicited => "MyText",
      :project_description => "MyText",
      :bid_instructions => "MyText",
      :project_url => "MyString"
    ))
  end

  it "renders new opportunity form" do
    render

    assert_select "form[action=?][method=?]", opportunities_path, "post" do

      assert_select "input#opportunity_client_id[name=?]", "opportunity[client_id]"

      assert_select "input#opportunity_project_name[name=?]", "opportunity[project_name]"

      assert_select "input#opportunity_project_owner[name=?]", "opportunity[project_owner]"

      assert_select "input#opportunity_union_contract[name=?]", "opportunity[union_contract]"

      assert_select "input#opportunity_city[name=?]", "opportunity[city]"

      assert_select "input#opportunity_state_id[name=?]", "opportunity[state_id]"

      assert_select "input#opportunity_contact_name[name=?]", "opportunity[contact_name]"

      assert_select "input#opportunity_contact_phone[name=?]", "opportunity[contact_phone]"

      assert_select "input#opportunity_contact_fax[name=?]", "opportunity[contact_fax]"

      assert_select "input#opportunity_contact_email[name=?]", "opportunity[contact_email]"

      assert_select "textarea#opportunity_trades_solicited[name=?]", "opportunity[trades_solicited]"

      assert_select "textarea#opportunity_project_description[name=?]", "opportunity[project_description]"

      assert_select "textarea#opportunity_bid_instructions[name=?]", "opportunity[bid_instructions]"

      assert_select "input#opportunity_project_url[name=?]", "opportunity[project_url]"
    end
  end
end
