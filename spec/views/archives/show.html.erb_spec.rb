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

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders attributes in <p>" do
    render
    rendered.should match(/1/)
    rendered.should match(/Pa Default Route/)
    rendered.should match(/Pa Customer/)
    rendered.should match(/Pa Driver Name/)
    rendered.should match(/Pa Driver Message/)
    rendered.should match(/Pa Route Name/)
    rendered.should match(/Pa Customer Name/)
    rendered.should match(/Pa Comment/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Pa Notes/)
  end
end
