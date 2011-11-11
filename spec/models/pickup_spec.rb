require 'spec_helper'



describe Pickup do

  def valid_attributes
   {
      :PickupTableID => '101',
      :DefaultRouteID => '01',
      :PickupDate => '11/11/2011',
      :CustomerID => 'AAAAA',
      :DriverName => 'Bill Driver',
      :RouteName => 'Concord',
      :CustomerName => 'Acme Inc.',
      :Comment => '2skids every day',
      :Monday => true, 
      :Dispatched => true,  # could complain abt Dispatch can't be blank
      :DispatchTime => '4PM',
      :Notes => '1 Me 1Ma'
   }
  end

  before(:each) do
    @d = Pickup.create! valid_attributes
    end
  it "can be instantiated" do
     @d.should  be_an_instance_of Pickup
   end

   it "must have a unique PickupTableID" do

      Pickup.create(  
         PickupTableID: '101',
         RouteName: 'Concord',
         DefaultRouteID: '02',
         PickupDate: '12/13/1943',
         CustomerID: 'CAMRC',
         DriverName: 'Ben Keary',
         RouteName: 'Concord',
         Monday: true,
         CustomerName: 'ACME',
         Comment: 'this is a comment',
         Dispatched: true,
         DispatchTime: '4pm',
         Notes: 'this is a note'
       ).should_not be_persisted
     end
end
   
