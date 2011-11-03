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

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders attributes in <p>" do
    render
    rendered.should match(/Driver/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Middle Initial/)
  end
end
