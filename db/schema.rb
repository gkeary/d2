# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111103030630) do

  create_table "archives", :force => true do |t|
    t.integer  "PickupArchiveID"
    t.string   "PADefaultRouteID"
    t.datetime "PAPickupDate"
    t.string   "PACustomerID"
    t.string   "PADriverName"
    t.string   "PADriverMessage"
    t.string   "PARouteName"
    t.string   "PACustomerName"
    t.string   "PAComment"
    t.boolean  "PADispatched"
    t.datetime "PADispatchTime"
    t.boolean  "PADeleted"
    t.string   "PANotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currend_day_routes", :force => true do |t|
    t.integer  "CurrentDayRouteID"
    t.string   "CDRRouteID"
    t.string   "CDRRouteName"
    t.string   "CDRDefaultDriverID"
    t.string   "CDRDriverLastName"
    t.string   "CDRDriverMessage"
    t.string   "CDRStation"
    t.boolean  "CDRChecked"
    t.datetime "CDRDate"
    t.string   "DUser"
    t.string   "Terminal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_day_pickups", :force => true do |t|
    t.integer  "CurrentDayPickupID"
    t.string   "CDPDefaultRouteID"
    t.string   "CDPPreviousRouteID"
    t.datetime "CDPPickupDate"
    t.string   "CDPCustomerID"
    t.string   "CDPDriverName"
    t.string   "CDPDriverMessage"
    t.string   "CDPRouteName"
    t.string   "CDPCustomerName"
    t.string   "CDPComment"
    t.boolean  "CDPDispatched"
    t.datetime "CDPDispatchTime"
    t.string   "CDPNotes"
    t.string   "CDPStation"
    t.boolean  "CDPChecked"
    t.boolean  "CDPDeleted"
    t.integer  "PostedCount"
    t.string   "Terminal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.integer  "CustomerTableID"
    t.string   "CustomerID"
    t.string   "CustomerName"
    t.string   "Address1"
    t.string   "Address2"
    t.string   "City"
    t.string   "State"
    t.string   "Phone"
    t.string   "Contact"
    t.string   "ClosingTime"
    t.string   "Comment"
    t.string   "DefaultRouteID"
    t.string   "DUser"
    t.string   "Terminal"
    t.string   "InfoString"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", :force => true do |t|
    t.string   "DriverID"
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "MiddleInitial"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pickups", :force => true do |t|
    t.integer  "PickupTableID"
    t.string   "DefaultRouteID"
    t.datetime "PickupDate"
    t.string   "CustomerID"
    t.string   "DriverName"
    t.string   "RouteName"
    t.string   "CustomerName"
    t.string   "Comment"
    t.boolean  "Monday"
    t.boolean  "Tuesday"
    t.boolean  "Wednesday"
    t.boolean  "Thursday"
    t.boolean  "Friday"
    t.boolean  "Dispatched"
    t.datetime "DispatchTime"
    t.string   "Notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", :force => true do |t|
    t.string   "RouteID"
    t.string   "RouteName"
    t.string   "DefaultDriverID"
    t.string   "DriverMessage"
    t.string   "DUser"
    t.string   "Terminal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
