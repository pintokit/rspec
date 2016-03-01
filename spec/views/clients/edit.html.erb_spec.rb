require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => nil,
      :zip => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_name[name=?]", "client[name]"

      assert_select "input#client_address_1[name=?]", "client[address_1]"

      assert_select "input#client_address_2[name=?]", "client[address_2]"

      assert_select "input#client_city[name=?]", "client[city]"

      assert_select "input#client_state_id[name=?]", "client[state_id]"

      assert_select "input#client_zip[name=?]", "client[zip]"
    end
  end
end
