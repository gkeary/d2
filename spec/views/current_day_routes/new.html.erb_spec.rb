require 'spec_helper'

describe "current_day_routes/new.html.erb" do
  before(:each) do
    assign(:current_day_route, stub_model(CurrentDayRoute).as_new_record)
  end

  it "renders new current_day_route form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => current_day_routes_path, :method => "post" do
    end
  end
end
