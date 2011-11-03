class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.integer :PickupArchiveID
      t.string :PADefaultRouteID
      t.datetime :PAPickupDate
      t.string :PACustomerID
      t.string :PADriverName
      t.string :PADriverMessage
      t.string :PARouteName
      t.string :PACustomerName
      t.string :PAComment
      t.boolean :PADispatched
      t.datetime :PADispatchTime
      t.boolean :PADeleted
      t.string :PANotes

      t.timestamps
    end
  end
end
