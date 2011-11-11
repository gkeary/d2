class Customer < ActiveRecord::Base
    validates :CustomerID, :presence => true
    validates :CustomerID, :uniqueness => true 
    validates :CustomerName, :DefaultRouteID, :City, :Phone, :ClosingTime, :DUser, :Terminal, :Comment, :InfoString, :presence => true
end
