require 'spec_helper'

describe "archives/show.html.erb" do
  before(:each) do
    @archive = assign(:archive, stub_model(Archive,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Default Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Customer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Driver Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Driver Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Route Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Customer Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Comment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pa Notes/)
  end
end
