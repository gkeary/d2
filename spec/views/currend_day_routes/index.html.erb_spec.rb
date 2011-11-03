require 'spec_helper'

describe "currend_day_routes/index.html.erb" do
  before(:each) do
    assign(:currend_day_routes, [
      stub_model(CurrendDayRoute,
        :CurrentDayRouteID => 1,
        :CDRRouteID => "Cdr Route",
        :CDRRouteName => "Cdr Route Name",
        :CDRDefaultDriverID => "Cdr Default Driver",
        :CDRDriverLastName => "Cdr Driver Last Name",
        :CDRDriverMessage => "Cdr Driver Message",
        :CDRStation => "Cdr Station",
        :CDRChecked => false,
        :DUser => "D User",
        :Terminal => "Terminal"
      ),
      stub_model(CurrendDayRoute,
        :CurrentDayRouteID => 1,
        :CDRRouteID => "Cdr Route",
        :CDRRouteName => "Cdr Route Name",
        :CDRDefaultDriverID => "Cdr Default Driver",
        :CDRDriverLastName => "Cdr Driver Last Name",
        :CDRDriverMessage => "Cdr Driver Message",
        :CDRStation => "Cdr Station",
        :CDRChecked => false,
        :DUser => "D User",
        :Terminal => "Terminal"
      )
    ])
  end

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders a list of currend_day_routes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Cdr Route".to_s, :count => 2
    assert_select "tr>td", :text => "Cdr Route Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cdr Default Driver".to_s, :count => 2
    assert_select "tr>td", :text => "Cdr Driver Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cdr Driver Message".to_s, :count => 2
    assert_select "tr>td", :text => "Cdr Station".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "D User".to_s, :count => 2
    assert_select "tr>td", :text => "Terminal".to_s, :count => 2
  end
end
