class Driver < ActiveRecord::Base
    validates :DriverID, :presence => true
    validates :DriverID, :uniqueness => true 
    validates :FirstName, :LastName, :presence => true
end
