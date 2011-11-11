require 'spec_helper'

describe "current_day_routes/show.html.erb" do
  before(:each) do
    @current_day_route = assign(:current_day_route, stub_model(CurrentDayRoute))
  end

  it "renders attributes in <p>" do
    render
  end
end
