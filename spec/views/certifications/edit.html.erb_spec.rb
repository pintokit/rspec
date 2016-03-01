require 'rails_helper'

RSpec.describe "certifications/edit", type: :view do
  before(:each) do
    @certification = assign(:certification, Certification.create!(
      :name => "MyString",
      :acronym => "MyString"
    ))
  end

  it "renders the edit certification form" do
    render

    assert_select "form[action=?][method=?]", certification_path(@certification), "post" do

      assert_select "input#certification_name[name=?]", "certification[name]"

      assert_select "input#certification_acronym[name=?]", "certification[acronym]"
    end
  end
end
