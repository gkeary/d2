require 'spec_helper'

describe CurrentDayRoute do
  def valid_attributes
    {
      RouteID: '01',
      Name: 'Concord',
      DefaultDriverID: 'GK',
      DriverLastName: 'Gregg Keary',
      DriverMessage: 'get milk',
      Station: 'elwood',
      Duser: 'gkeary',
      Terminal: 'sutton'
    }
  end


  before(:each) do
    @d = CurrentDayRoute.create valid_attributes
    end
  it "can be instantiated" do
     @d.should  be_an_instance_of CurrentDayRoute
   end

   it "must have a unique RouteID" do

    CurrentDayRoute.create(  
                RouteID: '01',
                Name: 'Concord',
                DefaultDriverID: 'GK',
                DriverLastName: 'Gregg Keary',
                DriverMessage: 'get milk',
                Station: 'elwood',
                Duser: 'gkeary',
                Terminal: 'sutton'
       ).should_not be_persisted
     end
end
