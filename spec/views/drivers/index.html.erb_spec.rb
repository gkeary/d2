require 'spec_helper'

describe "drivers/index.html.erb" do
  before(:each) do
    assign(:drivers, [
      stub_model(Driver,
        :DriverID => "Driver",
        :FirstName => "First Name",
        :LastName => "Last Name",
        :MiddleInitial => "Middle Initial"
      ),
      stub_model(Driver,
        :DriverID => "Driver",
        :FirstName => "First Name",
        :LastName => "Last Name",
        :MiddleInitial => "Middle Initial"
      )
    ])
  end

  it "renders a list of drivers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Driver".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Middle Initial".to_s, :count => 2
  end
end
