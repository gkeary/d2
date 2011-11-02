require 'spec_helper'

describe "routes/new.html.erb" do
  before(:each) do
    assign(:route, stub_model(Route,
      :RouteID => "MyString",
      :RouteName => "MyString",
      :DefaultDriverID => "MyString",
      :DriverMessage => "MyString",
      :DUser => "MyString",
      :Terminal => "MyString"
    ).as_new_record)
  end

  it "renders new route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => routes_path, :method => "post" do
      assert_select "input#route_RouteID", :name => "route[RouteID]"
      assert_select "input#route_RouteName", :name => "route[RouteName]"
      assert_select "input#route_DefaultDriverID", :name => "route[DefaultDriverID]"
      assert_select "input#route_DriverMessage", :name => "route[DriverMessage]"
      assert_select "input#route_DUser", :name => "route[DUser]"
      assert_select "input#route_Terminal", :name => "route[Terminal]"
    end
  end
end
