require 'spec_helper'

describe Route do

  def valid_attributes
    { RouteID:'AA',
       RouteName:'bb',
       DefaultDriverID:'bb',
       DUser: 'user',
       Terminal: 'thisterm'
    }
  end

  before(:each) do
    @d = Route.create! valid_attributes
    end
  it "can be instantiated" do
     @d.should  be_an_instance_of Route
   end
   
  it "must have a unique RouteID" do
     Route.create(:RouteID=>'AA',
                    :RouteName=>'bb',
                   :DefaultDriverID=>'bb',
                    :DUser => 'user',
                    :Terminal => 'thisterm').should_not be_persisted
      #Route.create.should not_be_persisted
  end
end
