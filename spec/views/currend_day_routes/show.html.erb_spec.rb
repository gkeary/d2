require 'spec_helper'

describe "currend_day_routes/show.html.erb" do
  before(:each) do
    @currend_day_route = assign(:currend_day_route, stub_model(CurrendDayRoute,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdr Route/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdr Route Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdr Default Driver/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdr Driver Last Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdr Driver Message/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cdr Station/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/D User/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Terminal/)
  end
end
