require 'spec_helper'

describe "customers/index.html.erb" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :CustomerTableID => 1,
        :CustomerID => "Customer",
        :CustomerName => "Customer Name",
        :Address1 => "Address1", :Address2 => "Address2",
        :City => "City", :State => "State",
        :Phone => "Phone",
        :Contact => "Contact",
        :ClosingTime => "Closing Time",
        :Comment => "Comment",
        :DefaultRouteID => "Default Route",
        :DUser => "D User",
        :Terminal => "Terminal",
        :InfoString => "Info String"
      ),
      stub_model(Customer,
        :CustomerTableID => 1,
        :CustomerID => "Customer",
        :CustomerName => "Customer Name",
        :Address1 => "Address1", :Address2 => "Address2",
        :City => "City", :State => "State",
        :Phone => "Phone",
        :Contact => "Contact",
        :ClosingTime => "Closing Time",
        :Comment => "Comment",
        :DefaultRouteID => "Default Route",
        :DUser => "D User",
        :Terminal => "Terminal",
        :InfoString => "Info String"
      )
    ])
  end

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => "Closing Time".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Default Route".to_s, :count => 2
    assert_select "tr>td", :text => "D User".to_s, :count => 2
    assert_select "tr>td", :text => "Terminal".to_s, :count => 2
    assert_select "tr>td", :text => "Info String".to_s, :count => 2
  end
end
