require 'spec_helper'

describe "currend_day_routes/edit.html.erb" do
  before(:each) do
    @currend_day_route = assign(:currend_day_route, stub_model(CurrendDayRoute,
      :CurrentDayRouteID => 1,
      :CDRRouteID => "MyString",
      :CDRRouteName => "MyString",
      :CDRDefaultDriverID => "MyString",
      :CDRDriverLastName => "MyString",
      :CDRDriverMessage => "MyString",
      :CDRStation => "MyString",
      :CDRChecked => false,
      :DUser => "MyString",
      :Terminal => "MyString"
    ))
  end

  it "renders the edit currend_day_route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => currend_day_routes_path(@currend_day_route), :method => "post" do
      assert_select "input#currend_day_route_CurrentDayRouteID", :name => "currend_day_route[CurrentDayRouteID]"
      assert_select "input#currend_day_route_CDRRouteID", :name => "currend_day_route[CDRRouteID]"
      assert_select "input#currend_day_route_CDRRouteName", :name => "currend_day_route[CDRRouteName]"
      assert_select "input#currend_day_route_CDRDefaultDriverID", :name => "currend_day_route[CDRDefaultDriverID]"
      assert_select "input#currend_day_route_CDRDriverLastName", :name => "currend_day_route[CDRDriverLastName]"
      assert_select "input#currend_day_route_CDRDriverMessage", :name => "currend_day_route[CDRDriverMessage]"
      assert_select "input#currend_day_route_CDRStation", :name => "currend_day_route[CDRStation]"
      assert_select "input#currend_day_route_CDRChecked", :name => "currend_day_route[CDRChecked]"
      assert_select "input#currend_day_route_DUser", :name => "currend_day_route[DUser]"
      assert_select "input#currend_day_route_Terminal", :name => "currend_day_route[Terminal]"
    end
  end
end
