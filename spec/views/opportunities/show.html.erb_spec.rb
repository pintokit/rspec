require 'rails_helper'

RSpec.describe "opportunities/show", type: :view do
  before(:each) do
    @opportunity = assign(:opportunity, Opportunity.create!(
      :client => nil,
      :project_name => "Project Name",
      :contact_name => "Contact Name",
      :contact_phone => 1,
      :contact_fax => 2,
      :contact_email => "Contact Email",
      :trades_solicited => "MyText",
      :instructions => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Project Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
