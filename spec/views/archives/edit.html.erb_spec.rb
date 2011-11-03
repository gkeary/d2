require 'spec_helper'

describe "archives/edit.html.erb" do
  before(:each) do
    @archive = assign(:archive, stub_model(Archive,
      :PickupArchiveID => 1,
      :PADefaultRouteID => "MyString",
      :PACustomerID => "MyString",
      :PADriverName => "MyString",
      :PADriverMessage => "MyString",
      :PARouteName => "MyString",
      :PACustomerName => "MyString",
      :PAComment => "MyString",
      :PADispatched => false,
      :PADeleted => false,
      :PANotes => "MyString"
    ))
  end

  it "renders the edit archive form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => archives_path(@archive), :method => "post" do
      assert_select "input#archive_PickupArchiveID", :name => "archive[PickupArchiveID]"
      assert_select "input#archive_PADefaultRouteID", :name => "archive[PADefaultRouteID]"
      assert_select "input#archive_PACustomerID", :name => "archive[PACustomerID]"
      assert_select "input#archive_PADriverName", :name => "archive[PADriverName]"
      assert_select "input#archive_PADriverMessage", :name => "archive[PADriverMessage]"
      assert_select "input#archive_PARouteName", :name => "archive[PARouteName]"
      assert_select "input#archive_PACustomerName", :name => "archive[PACustomerName]"
      assert_select "input#archive_PAComment", :name => "archive[PAComment]"
      assert_select "input#archive_PADispatched", :name => "archive[PADispatched]"
      assert_select "input#archive_PADeleted", :name => "archive[PADeleted]"
      assert_select "input#archive_PANotes", :name => "archive[PANotes]"
    end
  end
end
