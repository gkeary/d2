require 'spec_helper'

describe "current_day_routes/new.html.erb" do
  before(:each) do
    assign(:current_day_route, stub_model(CurrentDayRoute,
      :RouteID => "MyString",
      :Name => "MyString",
      :DefaultDriverID => "MyString",
      :DriverLastName => "MyString",
      :DriverMessage => "MyString",
      :Station => "MyString",
      :Duser => "MyString",
      :Terminal => "MyString"
    ).as_new_record)
  end

  it "renders new current_day_route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => current_day_routes_path, :method => "post" do
      assert_select "input#current_day_route_RouteID", :name => "current_day_route[RouteID]"
      assert_select "input#current_day_route_Name", :name => "current_day_route[Name]"
      assert_select "input#current_day_route_DefaultDriverID", :name => "current_day_route[DefaultDriverID]"
      assert_select "input#current_day_route_DriverLastName", :name => "current_day_route[DriverLastName]"
      assert_select "input#current_day_route_DriverMessage", :name => "current_day_route[DriverMessage]"
      assert_select "input#current_day_route_Station", :name => "current_day_route[Station]"
      assert_select "input#current_day_route_Duser", :name => "current_day_route[Duser]"
      assert_select "input#current_day_route_Terminal", :name => "current_day_route[Terminal]"
    end
  end
end
