class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :CustomerTableID
      t.string :CustomerID
      t.string :CustomerName
      t.string :Address1
      t.string :Address2
      t.string :City
      t.string :State
      t.string :Phone
      t.string :Contact
      t.string :ClosingTime
      t.string :Comment
      t.string :DefaultRouteID
      t.string :DUser
      t.string :Terminal
      t.string :InfoString

      t.timestamps
    end
  end
end
