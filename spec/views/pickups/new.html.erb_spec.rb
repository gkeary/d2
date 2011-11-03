require 'spec_helper'

describe "pickups/new.html.erb" do
  before(:each) do
    assign(:pickup, stub_model(Pickup,
      :PickupTableID => 1,
      :DefaultRouteID => "MyString",
      :CustomerID => "MyString",
      :DriverName => "MyString",
      :RouteName => "MyString",
      :CustomerName => "MyString",
      :Comment => "MyString",
      :Monday => false,
      :Tuesday => false,
      :Wednesday => false,
      :Thursday => false,
      :Friday => false,
      :Dispatched => false,
      :Notes => "MyString"
    ).as_new_record)
  end

  it "renders new pickup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pickups_path, :method => "post" do
      assert_select "input#pickup_PickupTableID", :name => "pickup[PickupTableID]"
      assert_select "input#pickup_DefaultRouteID", :name => "pickup[DefaultRouteID]"
      assert_select "input#pickup_CustomerID", :name => "pickup[CustomerID]"
      assert_select "input#pickup_DriverName", :name => "pickup[DriverName]"
      assert_select "input#pickup_RouteName", :name => "pickup[RouteName]"
      assert_select "input#pickup_CustomerName", :name => "pickup[CustomerName]"
      assert_select "input#pickup_Comment", :name => "pickup[Comment]"
      assert_select "input#pickup_Monday", :name => "pickup[Monday]"
      assert_select "input#pickup_Tuesday", :name => "pickup[Tuesday]"
      assert_select "input#pickup_Wednesday", :name => "pickup[Wednesday]"
      assert_select "input#pickup_Thursday", :name => "pickup[Thursday]"
      assert_select "input#pickup_Friday", :name => "pickup[Friday]"
      assert_select "input#pickup_Dispatched", :name => "pickup[Dispatched]"
      assert_select "input#pickup_Notes", :name => "pickup[Notes]"
    end
  end
end
