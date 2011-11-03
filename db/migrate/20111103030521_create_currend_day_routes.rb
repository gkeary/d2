class CreateCurrendDayRoutes < ActiveRecord::Migration
  def change
    create_table :currend_day_routes do |t|
      t.integer :CurrentDayRouteID
      t.string :CDRRouteID
      t.string :CDRRouteName
      t.string :CDRDefaultDriverID
      t.string :CDRDriverLastName
      t.string :CDRDriverMessage
      t.string :CDRStation
      t.boolean :CDRChecked
      t.datetime :CDRDate
      t.string :DUser
      t.string :Terminal

      t.timestamps
    end
  end
end
