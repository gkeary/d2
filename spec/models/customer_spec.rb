require 'spec_helper'

describe Customer do

def valid_attributes
  { CustomerID:'CAMRC',
     CustomerName:'bb',
     DefaultRouteID: '02',
     Address1:'bb',
     City:'bb',
     Phone: '555-1212',
     InfoString: 'Acme@Lebanon',
     ClosingTime: '6pm',
     Comment: 'this is a comment',
     DUser: 'user',
     Terminal: 'thisterm'
  }
end


  before(:each) do
    @d = Customer.create! valid_attributes
    end
  it "can be instantiated" do
     @d.should be_an_instance_of Customer
   end
   
  it "must have a unique CustomerID" do
     Customer.create(:CustomerID=>'CAMRC',
                    :CustomerName=>'bb',
                    :DUser => 'user',
                     Phone: '555-1212',
                     InfoString: 'Acme@Lebanon',
                     ClosingTime: '6pm',
                    :Terminal => 'thisterm').should_not be_persisted
  end
end
