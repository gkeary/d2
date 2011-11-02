require 'spec_helper'

describe "routes/index.html.erb" do
  before(:each) do
    assign(:routes, [
      stub_model(Route,
        :RouteID => "Route",
        :RouteName => "Route Name",
        :DefaultDriverID => "Default Driver",
        :DriverMessage => "Driver Message",
        :DUser => "D User",
        :Terminal => "Terminal"
      ),
      stub_model(Route,
        :RouteID => "Route",
        :RouteName => "Route Name",
        :DefaultDriverID => "Default Driver",
        :DriverMessage => "Driver Message",
        :DUser => "D User",
        :Terminal => "Terminal"
      )
    ])
  end

  it "renders a list of routes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Route".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Route Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Default Driver".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Driver Message".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "D User".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Terminal".to_s, :count => 2
  end
end
