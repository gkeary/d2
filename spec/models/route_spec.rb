require 'spec_helper'

describe Route do
#  pending "add some examples to (or delete) #{__FILE__}"
  it "can be instantiated" do
     Route.new.should be_an_instance_of Route
   end
   
  it "can be saved successfully" do
    Route.create.should be_persisted
  end
end
