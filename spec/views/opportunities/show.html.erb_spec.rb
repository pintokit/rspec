require 'rails_helper'

RSpec.describe "opportunities/show", type: :view do
  before(:each) do
    @opportunity = assign(:opportunity, Opportunity.create!(
      :client => nil,
      :project_name => "Project Name",
      :project_owner => "Project Owner",
      :union_contract => false,
      :city => "City",
      :state => nil,
      :contact_name => "Contact Name",
      :contact_phone => 1,
      :contact_fax => 2,
      :contact_email => "Contact Email",
      :trades_solicited => "MyText",
      :project_description => "MyText",
      :bid_instructions => "MyText",
      :project_url => "Project Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Project Name/)
    expect(rendered).to match(/Project Owner/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Project Url/)
  end
end
