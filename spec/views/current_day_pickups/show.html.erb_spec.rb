require 'spec_helper'

describe "current_day_pickups/show.html.erb" do
  before(:each) do
    @current_day_pickup = assign(:current_day_pickup, stub_model(CurrentDayPickup,
      :CurrentDayPickupID => 1,
      :CDPDefaultRouteID => "Cdp Default Route",
      :CDPPreviousRouteID => "Cdp Previous Route",
      :CDPCustomerID => "Cdp Customer",
      :CDPDriverName => "Cdp Driver Name",
      :CDPDriverMessage => "Cdp Driver Message",
      :CDPRouteName => "Cdp Route Name",
      :CDPCustomerName => "Cdp Customer Name",
      :CDPComment => "Cdp Comment",
      :CDPDispatched => false,
      :CDPNotes => "Cdp Notes",
      :CDPStation => "Cdp Station",
      :CDPChecked => false,
      :CDPDeleted => false,
      :PostedCount => 1,
      :Terminal => "Terminal"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Default Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Previous Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Customer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Driver Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Driver Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Route Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Customer Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Comment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Notes/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdp Station/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Terminal/)
  end
end
