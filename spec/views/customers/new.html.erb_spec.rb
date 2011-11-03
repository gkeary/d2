require 'spec_helper'

describe "customers/new.html.erb" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :CustomerTableID => 1,
      :CustomerID => "MyString",
      :CustomerName => "MyString",
      :Address1 => "MyString", :Address2 => "MyString",
      :City => "MyString", :State => "MyString",
      :Phone => "MyString",
      :Contact => "MyString",
      :ClosingTime => "MyString",
      :Comment => "MyString",
      :DefaultRouteID => "MyString",
      :DUser => "MyString",
      :Terminal => "MyString",
      :InfoString => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_CustomerTableID", :name => "customer[CustomerTableID]"
      assert_select "input#customer_CustomerID", :name => "customer[CustomerID]"
      assert_select "input#customer_CustomerName", :name => "customer[CustomerName]"
      assert_select "input#customer_Address1", :name => "customer[Address1]"
      assert_select "input#customer_Address2", :name => "customer[Address2]"
      assert_select "input#customer_City", :name => "customer[City]"
      assert_select "input#customer_State", :name => "customer[State]"
      assert_select "input#customer_Phone", :name => "customer[Phone]"
      assert_select "input#customer_Contact", :name => "customer[Contact]"
      assert_select "input#customer_ClosingTime", :name => "customer[ClosingTime]"
      assert_select "input#customer_Comment", :name => "customer[Comment]"
      assert_select "input#customer_DefaultRouteID", :name => "customer[DefaultRouteID]"
      assert_select "input#customer_DUser", :name => "customer[DUser]"
      assert_select "input#customer_Terminal", :name => "customer[Terminal]"
      assert_select "input#customer_InfoString", :name => "customer[InfoString]"
    end
  end
end
