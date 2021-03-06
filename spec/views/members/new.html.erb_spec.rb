require 'spec_helper'

describe "members/new" do
  before(:each) do
    assign(:member, stub_model(Member,
      :name => "MyString",
      :email => "MyString",
      :location => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", members_path, "post" do
      assert_select "input#member_name[name=?]", "member[name]"
      assert_select "input#member_email[name=?]", "member[email]"
      assert_select "input#member_location[name=?]", "member[location]"
      assert_select "textarea#member_description[name=?]", "member[description]"
    end
  end
end
