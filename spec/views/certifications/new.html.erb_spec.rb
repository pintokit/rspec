require 'rails_helper'

RSpec.describe "certifications/new", type: :view do
  before(:each) do
    assign(:certification, Certification.new(
      :name => "MyString",
      :acronym => "MyString"
    ))
  end

  it "renders new certification form" do
    render

    assert_select "form[action=?][method=?]", certifications_path, "post" do

      assert_select "input#certification_name[name=?]", "certification[name]"

      assert_select "input#certification_acronym[name=?]", "certification[acronym]"
    end
  end
end
