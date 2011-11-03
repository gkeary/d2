class Route < ActiveRecord::Base
    validates :RouteID, :presence => true
    validates :RouteID, :uniqueness => true 
    validates :RouteName, :DefaultDriverID, :DUser, :Terminal, :presence => true
end
