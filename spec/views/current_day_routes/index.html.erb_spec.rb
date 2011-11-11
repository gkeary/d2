require 'spec_helper'

describe "current_day_routes/index.html.erb" do
  before(:each) do
    assign(:current_day_routes, [
      stub_model(CurrentDayRoute),
      stub_model(CurrentDayRoute)
    ])
  end

  it "renders a list of current_day_routes" do
    render
  end
end
