require 'spec_helper'

describe Driver do

  before(:each) do
    @d = Driver.create!( DriverID: 'AA', FirstName: 'bb',LastName:  'bb')
    end
  it "can be instantiated" do
     @d.should  be_an_instance_of Driver
   end
   
  it "must have a unique DriverID" do
     Driver.create(:DriverID=>'AA',:FirstName=>'bb',:LastName=>'bb').should_not be_persisted
      #Driver.create.should not_be_persisted
  end

end
