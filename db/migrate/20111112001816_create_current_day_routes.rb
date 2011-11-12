class CreateCurrentDayRoutes < ActiveRecord::Migration
  def change
    create_table :current_day_routes do |t|
      t.string :RouteID
      t.string :Name
      t.string :DefaultDriverID
      t.string :DriverLastName
      t.string :DriverMessage
      t.string :Station
      t.string :Duser
      t.string :Terminal

      t.timestamps
    end
  end
end
