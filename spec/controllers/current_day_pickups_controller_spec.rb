require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CurrentDayPickupsController do

  # This should return the minimal set of attributes required to create a valid
  # CurrentDayPickup. As you add validations to CurrentDayPickup, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {
        :CurrentDayPickupID => '01', 
        :CDPDefaultRouteID => '001', 
        :CDPPreviousRouteID => '15', 
        :CDPPickupDate => "12/13/2005",
        :CDPCustomerID => 'AAAAA',
        :CDPDriverName => 'Bill Driver', 
        :CDPDriverMessage => 'get Hot Chocolate',
        :CDPRouteName => 'Sutton', 
        :CDPCustomerName => 'Acme Inc.', 
        :CDPComment => '2 skids',
        :CDPDispatched => true, 
        :CDPDispatchTime => '4:40PM', 
        :CDPNotes => '1 CT, 1MA',
        :CDPStation => 'elwood', 
        :CDPChecked => 'deleted', 
        :CDPDeleted => 'deleted',
        :PostedCount => '3', 
        :Terminal  => 'elwood'
    }
  end

  describe "GET index" do
    it "assigns all current_day_pickups as @current_day_pickups" do
      current_day_pickup = CurrentDayPickup.create! valid_attributes
      get :index
      assigns(:current_day_pickups).should eq([current_day_pickup])
    end
  end

  describe "GET show" do
    it "assigns the requested current_day_pickup as @current_day_pickup" do
      current_day_pickup = CurrentDayPickup.create! valid_attributes
      get :show, :id => current_day_pickup.id
      assigns(:current_day_pickup).should eq(current_day_pickup)
    end
  end

  describe "GET new" do
    it "assigns a new current_day_pickup as @current_day_pickup" do
      get :new
      assigns(:current_day_pickup).should be_a_new(CurrentDayPickup)
    end
  end

  describe "GET edit" do
    it "assigns the requested current_day_pickup as @current_day_pickup" do
      current_day_pickup = CurrentDayPickup.create! valid_attributes
      get :edit, :id => current_day_pickup.id
      assigns(:current_day_pickup).should eq(current_day_pickup)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CurrentDayPickup" do
        expect {
          post :create, :current_day_pickup => valid_attributes
        }.to change(CurrentDayPickup, :count).by(1)
      end

      it "assigns a newly created current_day_pickup as @current_day_pickup" do
        post :create, :current_day_pickup => valid_attributes
        assigns(:current_day_pickup).should be_a(CurrentDayPickup)
        assigns(:current_day_pickup).should be_persisted
      end

      it "redirects to the created current_day_pickup" do
        post :create, :current_day_pickup => valid_attributes
        response.should redirect_to(CurrentDayPickup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved current_day_pickup as @current_day_pickup" do
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayPickup.any_instance.stub(:save).and_return(false)
        post :create, :current_day_pickup => {}
        assigns(:current_day_pickup).should be_a_new(CurrentDayPickup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayPickup.any_instance.stub(:save).and_return(false)
        post :create, :current_day_pickup => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested current_day_pickup" do
        current_day_pickup = CurrentDayPickup.create! valid_attributes
        # Assuming there are no other current_day_pickups in the database, this
        # specifies that the CurrentDayPickup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CurrentDayPickup.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => current_day_pickup.id, :current_day_pickup => {'these' => 'params'}
      end

      it "assigns the requested current_day_pickup as @current_day_pickup" do
        current_day_pickup = CurrentDayPickup.create! valid_attributes
        put :update, :id => current_day_pickup.id, :current_day_pickup => valid_attributes
        assigns(:current_day_pickup).should eq(current_day_pickup)
      end

      it "redirects to the current_day_pickup" do
        current_day_pickup = CurrentDayPickup.create! valid_attributes
        put :update, :id => current_day_pickup.id, :current_day_pickup => valid_attributes
        response.should redirect_to(current_day_pickup)
      end
    end

    describe "with invalid params" do
      it "assigns the current_day_pickup as @current_day_pickup" do
        current_day_pickup = CurrentDayPickup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayPickup.any_instance.stub(:save).and_return(false)
        put :update, :id => current_day_pickup.id, :current_day_pickup => {}
        assigns(:current_day_pickup).should eq(current_day_pickup)
      end

      it "re-renders the 'edit' template" do
        current_day_pickup = CurrentDayPickup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayPickup.any_instance.stub(:save).and_return(false)
        put :update, :id => current_day_pickup.id, :current_day_pickup => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested current_day_pickup" do
      current_day_pickup = CurrentDayPickup.create! valid_attributes
      expect {
        delete :destroy, :id => current_day_pickup.id
      }.to change(CurrentDayPickup, :count).by(-1)
    end

    it "redirects to the current_day_pickups list" do
      current_day_pickup = CurrentDayPickup.create! valid_attributes
      delete :destroy, :id => current_day_pickup.id
      response.should redirect_to(current_day_pickups_url)
    end
  end

end
