require 'spec_helper'

describe "customers/show.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :CustomerTableID => 1,
      :CustomerID => "Customer",
      :CustomerName => "Customer Name",
      :Address1 => "Address1",
      :Address2 => "Address2",
      :City => "City", :State => "State", :Phone => "Phone",
      :Contact => "Contact",
      :ClosingTime => "Closing Time",
      :Comment => "Comment",
      :DefaultRouteID => "Default Route",
      :DUser => "D User",
      :Terminal => "Terminal",
      :InfoString => "Info String"
    ))
  end

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders attributes in <p>" do
    render
    rendered.should match(/1/)
    rendered.should match(/Customer/)
    rendered.should match(/Customer Name/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Phone/)
    rendered.should match(/Contact/)
    rendered.should match(/Closing Time/)
    rendered.should match(/Comment/)
    rendered.should match(/Default Route/)
    rendered.should match(/D User/)
    rendered.should match(/Terminal/)
    rendered.should match(/Info String/)
  end
end
