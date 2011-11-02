require 'spec_helper'

describe "routes/show.html.erb" do
  before(:each) do
    @route = assign(:route, stub_model(Route,
      :RouteID => "Route",
      :RouteName => "Route Name",
      :DefaultDriverID => "Default Driver",
      :DriverMessage => "Driver Message",
      :DUser => "D User",
      :Terminal => "Terminal"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Route Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Default Driver/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Driver Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/D User/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Terminal/)
  end
end
