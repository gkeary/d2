require 'spec_helper'

describe "drivers/edit.html.erb" do
  before(:each) do
    @driver = assign(:driver, stub_model(Driver,
      :DriverID => "MyString",
      :FirstName => "MyString",
      :LastName => "MyString",
      :MiddleInitial => "MyString"
    ))
  end

  it "renders the edit driver form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drivers_path(@driver), :method => "post" do
      assert_select "input#driver_DriverID", :name => "driver[DriverID]"
      assert_select "input#driver_FirstName", :name => "driver[FirstName]"
      assert_select "input#driver_LastName", :name => "driver[LastName]"
      assert_select "input#driver_MiddleInitial", :name => "driver[MiddleInitial]"
    end
  end
end
