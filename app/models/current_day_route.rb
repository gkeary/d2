class CurrentDayRoute < ActiveRecord::Base

    validates :RouteID, :presence => true
    validates :RouteID, :uniqueness => true 
    validates :Name, :DefaultDriverID, :DriverLastName, :DriverMessage, 
              :Station, :Duser, :Terminal,
              :presence => true
end
