require 'spec_helper'

describe "current_day_pickups/new.html.erb" do
  before(:each) do
    assign(:current_day_pickup, stub_model(CurrentDayPickup,
      :CurrentDayPickupID => 1,
      :CDPDefaultRouteID => "MyString",
      :CDPPreviousRouteID => "MyString",
      :CDPCustomerID => "MyString",
      :CDPDriverName => "MyString",
      :CDPDriverMessage => "MyString",
      :CDPRouteName => "MyString",
      :CDPCustomerName => "MyString",
      :CDPComment => "MyString",
      :CDPDispatched => false,
      :CDPNotes => "MyString",
      :CDPStation => "MyString",
      :CDPChecked => false,
      :CDPDeleted => false,
      :PostedCount => 1,
      :Terminal => "MyString"
    ).as_new_record)
  end

  it "renders new current_day_pickup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => current_day_pickups_path, :method => "post" do
      assert_select "input#current_day_pickup_CurrentDayPickupID", :name => "current_day_pickup[CurrentDayPickupID]"
      assert_select "input#current_day_pickup_CDPDefaultRouteID", :name => "current_day_pickup[CDPDefaultRouteID]"
      assert_select "input#current_day_pickup_CDPPreviousRouteID", :name => "current_day_pickup[CDPPreviousRouteID]"
      assert_select "input#current_day_pickup_CDPCustomerID", :name => "current_day_pickup[CDPCustomerID]"
      assert_select "input#current_day_pickup_CDPDriverName", :name => "current_day_pickup[CDPDriverName]"
      assert_select "input#current_day_pickup_CDPDriverMessage", :name => "current_day_pickup[CDPDriverMessage]"
      assert_select "input#current_day_pickup_CDPRouteName", :name => "current_day_pickup[CDPRouteName]"
      assert_select "input#current_day_pickup_CDPCustomerName", :name => "current_day_pickup[CDPCustomerName]"
      assert_select "input#current_day_pickup_CDPComment", :name => "current_day_pickup[CDPComment]"
      assert_select "input#current_day_pickup_CDPDispatched", :name => "current_day_pickup[CDPDispatched]"
      assert_select "input#current_day_pickup_CDPNotes", :name => "current_day_pickup[CDPNotes]"
      assert_select "input#current_day_pickup_CDPStation", :name => "current_day_pickup[CDPStation]"
      assert_select "input#current_day_pickup_CDPChecked", :name => "current_day_pickup[CDPChecked]"
      assert_select "input#current_day_pickup_CDPDeleted", :name => "current_day_pickup[CDPDeleted]"
      assert_select "input#current_day_pickup_PostedCount", :name => "current_day_pickup[PostedCount]"
      assert_select "input#current_day_pickup_Terminal", :name => "current_day_pickup[Terminal]"
    end
  end
end
