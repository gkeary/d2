require 'spec_helper'

describe Driver do
#  pending "add some examples to (or delete) #{__FILE__}"
  it "can be instantiated" do
     Driver.new.should be_an_instance_of Driver
   end
   
  it "can be saved successfully" do
    Driver.create.should be_persisted
  end

end
