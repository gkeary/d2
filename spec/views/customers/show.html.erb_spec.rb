require 'spec_helper'

describe "customers/show.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :CustomerTableID => 1,
      :CustomerID => "Customer",
      :CustomerName => "Customer Name",
      :Address1 => "Address1",
      :Address2 => "Address2",
      :City => "City",
      :State => "State",
      :Phone => "Phone",
      :Contact => "Contact",
      :ClosingTime => "Closing Time",
      :Comment => "Comment",
      :DefaultRouteID => "Default Route",
      :DUser => "D User",
      :Terminal => "Terminal",
      :InfoString => "Info String"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address2/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Closing Time/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comment/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Default Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/D User/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Terminal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Info String/)
  end
end
