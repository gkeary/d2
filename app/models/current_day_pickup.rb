class CurrentDayPickup < ActiveRecord::Base

    validates :CurrentDayPickupID, :presence => true
    validates :CurrentDayPickupID, :uniqueness => true 
    validates :CDPDefaultRouteID, :CDPPreviousRouteID, 
#:CDPPickupDate,
    :CDPCustomerID, :CDPDriverName, :CDPDriverMessage,
    :CDPRouteName, :CDPCustomerName, :CDPComment,
    :CDPDispatched, :CDPDispatchTime, :CDPNotes,
    :CDPStation, 
#:CDPChecked, :CDPDeleted,
    :PostedCount, :Terminal,
    :presence => true
    
end
  
