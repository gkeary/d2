class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :RouteID
      t.string :RouteName
      t.string :DefaultDriverID
      t.string :DriverMessage
      t.string :DUser
      t.string :Terminal

      t.timestamps
    end
  end
end
