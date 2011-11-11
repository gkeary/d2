class CreateCurrentDayRoutes < ActiveRecord::Migration
  def change
    create_table :current_day_routes do |t|

      t.timestamps
    end
  end
end
