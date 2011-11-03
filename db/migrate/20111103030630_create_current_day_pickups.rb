class CreateCurrentDayPickups < ActiveRecord::Migration
  def change
    create_table :current_day_pickups do |t|
      t.integer :CurrentDayPickupID
      t.string :CDPDefaultRouteID
      t.string :CDPPreviousRouteID
      t.datetime :CDPPickupDate
      t.string :CDPCustomerID
      t.string :CDPDriverName
      t.string :CDPDriverMessage
      t.string :CDPRouteName
      t.string :CDPCustomerName
      t.string :CDPComment
      t.boolean :CDPDispatched
      t.datetime :CDPDispatchTime
      t.string :CDPNotes
      t.string :CDPStation
      t.boolean :CDPChecked
      t.boolean :CDPDeleted
      t.integer :PostedCount
      t.string :Terminal

      t.timestamps
    end
  end
end
