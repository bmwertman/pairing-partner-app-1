require 'spec_helper'

describe "technologies/show" do
  before(:each) do
    @technology = assign(:technology, stub_model(Technology,
      :name => "Name",
      :skill_level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
