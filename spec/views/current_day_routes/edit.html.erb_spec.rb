require 'spec_helper'

describe "current_day_routes/edit.html.erb" do
  before(:each) do
    @current_day_route = assign(:current_day_route, stub_model(CurrentDayRoute))
  end

  it "renders the edit current_day_route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => current_day_routes_path(@current_day_route), :method => "post" do
    end
  end
end
