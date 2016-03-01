require 'rails_helper'

RSpec.describe "opportunities/index", type: :view do
  before(:each) do
    assign(:opportunities, [
      Opportunity.create!(
        :client => nil,
        :project_name => "Project Name",
        :contact_name => "Contact Name",
        :contact_phone => 1,
        :contact_fax => 2,
        :contact_email => "Contact Email",
        :trades_solicited => "MyText",
        :instructions => "MyText"
      ),
      Opportunity.create!(
        :client => nil,
        :project_name => "Project Name",
        :contact_name => "Contact Name",
        :contact_phone => 1,
        :contact_fax => 2,
        :contact_email => "Contact Email",
        :trades_solicited => "MyText",
        :instructions => "MyText"
      )
    ])
  end

  it "renders a list of opportunities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
