require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :company => nil,
      :first_name => "First Name",
      :last_name => "Last Name",
      :title => "Title",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :city => "City",
      :state => nil,
      :zip => "Zip",
      :mobile_number => 1,
      :office_number => 2,
      :extension => "Extension",
      :fax_number => 3,
      :gender => "Gender",
      :ethnicity => "Ethnicity",
      :veteran_status => "Veteran Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Extension/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Ethnicity/)
    expect(rendered).to match(/Veteran Status/)
  end
end
