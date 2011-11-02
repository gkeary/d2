require 'spec_helper'

describe "drivers/show.html.erb" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :DriverID => "Driver",
      :FirstName => "First Name",
      :LastName => "Last Name",
      :MiddleInitial => "Middle Initial"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Driver/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Middle Initial/)
  end
end
