require 'spec_helper'

describe "current_day_routes/show.html.erb" do
  before(:each) do
    @current_day_route = assign(:current_day_route, stub_model(CurrentDayRoute,
      :RouteID => "Route",
      :Name => "Name",
      :DefaultDriverID => "Default Driver",
      :DriverLastName => "Driver Last Name",
      :DriverMessage => "Driver Message",
      :Station => "Station",
      :Duser => "Duser",
      :Terminal => "Terminal"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Default Driver/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Driver Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Driver Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Station/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Duser/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Terminal/)
  end
end
