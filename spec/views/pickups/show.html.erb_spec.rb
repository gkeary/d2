require 'spec_helper'

describe "pickups/show.html.erb" do
  before(:each) do
    @pickup = assign(:pickup, stub_model(Pickup,
      :PickupTableID => 1,
      :DefaultRouteID => "Default Route",
      :CustomerID => "Customer",
      :DriverName => "Driver Name",
      :RouteName => "Route Name",
      :CustomerName => "Customer Name",
      :Comment => "Comment",
      :Monday => false,
      :Tuesday => false,
      :Wednesday => false,
      :Thursday => false,
      :Friday => false,
      :Dispatched => false,
      :Notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Default Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Driver Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Route Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Notes/)
  end
end
