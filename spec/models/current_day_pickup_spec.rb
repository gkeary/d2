require 'spec_helper'

describe CurrentDayPickup do

  def valid_attributes
    {
        :CurrentDayPickupID => '01', 
        :CDPDefaultRouteID => '001', 
        :CDPPreviousRouteID => '15', 
        :CDPPickupDate => '12/13/1943',
        :CDPCustomerID => 'AAAAA',
        :CDPDriverName => 'Bill Driver', 
        :CDPDriverMessage => 'get Hot Chocolate',
        :CDPRouteName => 'Sutton', 
        :CDPCustomerName => 'Acme Inc.', 
        :CDPComment => '2 skids',
        :CDPDispatched => true, 
        :CDPDispatchTime => '4:40PM', 
        :CDPNotes => '1 CT, 1MA',
        :CDPStation => 'elwood', 
        :CDPChecked => false, 
        :CDPDeleted => false,
        :PostedCount => '3', 
        :Terminal  => 'elwood'
    }
  end


  before(:each) do
    @d = CurrentDayPickup.create valid_attributes
    end
  it "can be instantiated" do
     @d.should  be_an_instance_of CurrentDayPickup
   end

   it "must have a unique PickupID" do

    CurrentDayPickup.create(  
        :CurrentDayPickupID => '01', 
        :CDPDefaultRouteID => '001', 
        :CDPPreviousRouteID => '15', 
        :CDPPickupDate => '12/13/1943',
        :CDPCustomerID => 'AAAAA',
        :CDPDriverName => 'Bill Driver', 
        :CDPDriverMessage => 'get Hot Chocolate',
        :CDPRouteName => 'Sutton', 
        :CDPCustomerName => 'Acme Inc.', 
        :CDPComment => '2 skids',
        :CDPDispatched => true, 
        :CDPDispatchTime => '4:40PM', 
        :CDPNotes => '1 CT, 1MA',
        :CDPStation => 'elwood', 
        :CDPChecked => false, 
        :CDPDeleted => false,
        :PostedCount => '3', 
        :Terminal  => 'elwood'
       ).should_not be_persisted
     end
end
