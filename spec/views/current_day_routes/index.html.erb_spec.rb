require 'spec_helper'

describe "current_day_routes/index.html.erb" do
  before(:each) do
    assign(:current_day_routes, [
      stub_model(CurrentDayRoute,
        :RouteID => "Route",
        :Name => "Name",
        :DefaultDriverID => "Default Driver",
        :DriverLastName => "Driver Last Name",
        :DriverMessage => "Driver Message",
        :Station => "Station",
        :Duser => "Duser",
        :Terminal => "Terminal"
      ),
      stub_model(CurrentDayRoute,
        :RouteID => "Route",
        :Name => "Name",
        :DefaultDriverID => "Default Driver",
        :DriverLastName => "Driver Last Name",
        :DriverMessage => "Driver Message",
        :Station => "Station",
        :Duser => "Duser",
        :Terminal => "Terminal"
      )
    ])
  end

  it "renders a list of current_day_routes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Route".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Default Driver".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Driver Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Driver Message".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Station".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Duser".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Terminal".to_s, :count => 2
  end
end
