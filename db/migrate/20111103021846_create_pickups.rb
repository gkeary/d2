class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.integer :PickupTableID
      t.string :DefaultRouteID
      t.datetime :PickupDate
      t.string :CustomerID
      t.string :DriverName
      t.string :RouteName
      t.string :CustomerName
      t.string :Comment
      t.boolean :Monday
      t.boolean :Tuesday
      t.boolean :Wednesday
      t.boolean :Thursday
      t.boolean :Friday
      t.boolean :Dispatched
      t.datetime :DispatchTime
      t.string :Notes

      t.timestamps
    end
  end
end
