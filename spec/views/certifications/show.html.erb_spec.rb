require 'rails_helper'

RSpec.describe "certifications/show", type: :view do
  before(:each) do
    @certification = assign(:certification, Certification.create!(
      :name => "Name",
      :acronym => "Acronym"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Acronym/)
  end
end
