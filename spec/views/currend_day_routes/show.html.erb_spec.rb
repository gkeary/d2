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

    # Run the generator again with the --webrat flag if you want to use webrat matchers
  it "renders attributes in <p>" do
    render
    rendered.should match(/1/)
    rendered.should match(/Cdr Route/)
    rendered.should match(/Cdr Route Name/)
    rendered.should match(/Cdr Default Driver/)
    rendered.should match(/Cdr Driver Last Name/)
    rendered.should match(/Cdr Driver Message/)
    rendered.should match(/Cdr Station/)
    rendered.should match(/false/)
    rendered.should match(/D User/)
    rendered.should match(/Terminal/)
  end
end
