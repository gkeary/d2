class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :DriverID
      t.string :FirstName
      t.string :LastName
      t.string :MiddleInitial

      t.timestamps
    end

    def down
      drop_table :drivers
    end
  end
end
