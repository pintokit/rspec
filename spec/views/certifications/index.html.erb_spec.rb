require 'rails_helper'

RSpec.describe "certifications/index", type: :view do
  before(:each) do
    assign(:certifications, [
      Certification.create!(
        :name => "Name",
        :acronym => "Acronym"
      ),
      Certification.create!(
        :name => "Name",
        :acronym => "Acronym"
      )
    ])
  end

  it "renders a list of certifications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Acronym".to_s, :count => 2
  end
end
