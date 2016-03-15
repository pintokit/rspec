require 'rails_helper'

RSpec.describe "opportunities/index", type: :view do
  before(:each) do
    @client_1 = Client.new(id: 1)
    @client_2 = Client.new(id: 2)
    @state_1 = State.new(id: 1)
    assign(:opportunities, [
      Opportunity.create!(
        :client => @client_1,
        :project_name => "Project Name",
        :project_owner => "Project Owner",
        :union_contract => false,
        :city => "City",
        :state => @state_1,
        :contact_name => "Contact Name",
        :contact_phone => 1,
        :contact_fax => 2,
        :contact_email => "Contact Email",
        :trades_solicited => "MyText",
        :project_description => "MyText",
        :bid_instructions => "MyText",
        :project_url => "Project Url"
      ),
      Opportunity.create!(
        :client => @client_2,
        :project_name => "Project Name",
        :project_owner => "Project Owner",
        :union_contract => false,
        :city => "City",
        :state => @state_1,
        :contact_name => "Contact Name",
        :contact_phone => 1,
        :contact_fax => 2,
        :contact_email => "Contact Email",
        :trades_solicited => "MyText",
        :project_description => "MyText",
        :bid_instructions => "MyText",
        :project_url => "Project Url"
      )
    ])
  end

  it "renders a list of opportunities" do
    render
    assert_select "tr>td", :text => @client_1.to_s, :count => 1
    assert_select "tr>td", :text => @client_2.to_s, :count => 1
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    assert_select "tr>td", :text => "Project Owner".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => @state_1.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 6
    assert_select "tr>td", :text => "Project Url".to_s, :count => 2
  end
end
