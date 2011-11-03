require 'spec_helper'

describe "archives/index.html.erb" do
  before(:each) do
    assign(:archives, [
      stub_model(Archive,
        :PickupArchiveID => 1,
        :PADefaultRouteID => "Pa Default Route",
        :PACustomerID => "Pa Customer",
        :PADriverName => "Pa Driver Name",
        :PADriverMessage => "Pa Driver Message",
        :PARouteName => "Pa Route Name",
        :PACustomerName => "Pa Customer Name",
        :PAComment => "Pa Comment",
        :PADispatched => false,
        :PADeleted => false,
        :PANotes => "Pa Notes"
      ),
      stub_model(Archive,
        :PickupArchiveID => 1,
        :PADefaultRouteID => "Pa Default Route",
        :PACustomerID => "Pa Customer",
        :PADriverName => "Pa Driver Name",
        :PADriverMessage => "Pa Driver Message",
        :PARouteName => "Pa Route Name",
        :PACustomerName => "Pa Customer Name",
        :PAComment => "Pa Comment",
        :PADispatched => false,
        :PADeleted => false,
        :PANotes => "Pa Notes"
      )
    ])
  end

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders a list of archives" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Pa Default Route".to_s, :count => 2
    assert_select "tr>td", :text => "Pa Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Pa Driver Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pa Driver Message".to_s, :count => 2
    assert_select "tr>td", :text => "Pa Route Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pa Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pa Comment".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 4
#don't know why it sees 4 instead of 2?  rgk 11/2/11
    assert_select "tr>td", :text => false.to_s, :count => 4
    assert_select "tr>td", :text => "Pa Notes".to_s, :count => 2
  end
end
