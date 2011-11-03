require 'spec_helper'

describe "current_day_pickups/index.html.erb" do
  before(:each) do
    assign(:current_day_pickups, [
      stub_model(CurrentDayPickup,
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
      ),
      stub_model(CurrentDayPickup,
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
      )
    ])
  end

  it "renders a list of current_day_pickups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 4
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Default Route".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Previous Route".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Customer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Driver Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Driver Message".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Route Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Customer Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Comment".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Notes".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cdp Station".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 6
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 4
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Terminal".to_s, :count => 2
  end
end
