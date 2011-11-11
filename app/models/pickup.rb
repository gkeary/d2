class Pickup < ActiveRecord::Base
    validates :PickupTableID, :presence => true
    validates :PickupTableID, :uniqueness => true 
    validates :RouteName, :DefaultRouteID, :PickupDate, :CustomerID, 
              :DriverName, :RouteName, :CustomerName, :Comment, 
               :Dispatched, 
              :DispatchTime, :Notes , :presence => true
end
