require 'rails_helper'

RSpec.describe "opportunities/edit", type: :view do
  before(:each) do
    @opportunity = assign(:opportunity, Opportunity.create!(
      :client => nil,
      :project_name => "MyString",
      :contact_name => "MyString",
      :contact_phone => 1,
      :contact_fax => 1,
      :contact_email => "MyString",
      :trades_solicited => "MyText",
      :instructions => "MyText"
    ))
  end

  it "renders the edit opportunity form" do
    render

    assert_select "form[action=?][method=?]", opportunity_path(@opportunity), "post" do

      assert_select "input#opportunity_client_id[name=?]", "opportunity[client_id]"

      assert_select "input#opportunity_project_name[name=?]", "opportunity[project_name]"

      assert_select "input#opportunity_contact_name[name=?]", "opportunity[contact_name]"

      assert_select "input#opportunity_contact_phone[name=?]", "opportunity[contact_phone]"

      assert_select "input#opportunity_contact_fax[name=?]", "opportunity[contact_fax]"

      assert_select "input#opportunity_contact_email[name=?]", "opportunity[contact_email]"

      assert_select "textarea#opportunity_trades_solicited[name=?]", "opportunity[trades_solicited]"

      assert_select "textarea#opportunity_instructions[name=?]", "opportunity[instructions]"
    end
  end
end
