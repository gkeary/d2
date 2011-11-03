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

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders attributes in <p>" do
    render
    rendered.should match(/1/)
    rendered.should match(/Cdp Default Route/)
    rendered.should match(/Cdp Previous Route/)
    rendered.should match(/Cdp Customer/)
    rendered.should match(/Cdp Driver Name/)
    rendered.should match(/Cdp Driver Message/)
    rendered.should match(/Cdp Route Name/)
    rendered.should match(/Cdp Customer Name/)
    rendered.should match(/Cdp Comment/)
    rendered.should match(/false/)
    rendered.should match(/Cdp Notes/)
    rendered.should match(/Cdp Station/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/Terminal/)
  end
end
