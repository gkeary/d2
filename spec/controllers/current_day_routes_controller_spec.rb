require 'spec_helper'


describe CurrentDayRoutesController do

  # This should return the minimal set of attributes required to create a valid
  # CurrentDayRoute. As you add validations to CurrentDayRoute, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {
      RouteID: '01',
      Name: 'Concord',
      DefaultDriverID: 'GK',
      DriverLastName: 'Gregg Keary',
      DriverMessage: 'get milk',
      Station: 'elwood',
      Duser: 'gkeary',
      Terminal: 'sutton'
    }
  end

  describe "GET index" do
    it "assigns all current_day_routes as @current_day_routes" do
      current_day_route = CurrentDayRoute.create! valid_attributes
      get :index
      assigns(:current_day_routes).should eq([current_day_route])
    end
  end

  describe "GET show" do
    it "assigns the requested current_day_route as @current_day_route" do
      current_day_route = CurrentDayRoute.create! valid_attributes
      get :show, :id => current_day_route.id
      assigns(:current_day_route).should eq(current_day_route)
    end
  end

  describe "GET new" do
    it "assigns a new current_day_route as @current_day_route" do
      get :new
      assigns(:current_day_route).should be_a_new(CurrentDayRoute)
    end
  end

  describe "GET edit" do
    it "assigns the requested current_day_route as @current_day_route" do
      current_day_route = CurrentDayRoute.create! valid_attributes
      get :edit, :id => current_day_route.id
      assigns(:current_day_route).should eq(current_day_route)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CurrentDayRoute" do
        expect {
          post :create, :current_day_route => valid_attributes
        }.to change(CurrentDayRoute, :count).by(1)
      end

      it "assigns a newly created current_day_route as @current_day_route" do
        post :create, :current_day_route => valid_attributes
        assigns(:current_day_route).should be_a(CurrentDayRoute)
        assigns(:current_day_route).should be_persisted
      end

      it "redirects to the created current_day_route" do
        post :create, :current_day_route => valid_attributes
        response.should redirect_to(CurrentDayRoute.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved current_day_route as @current_day_route" do
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayRoute.any_instance.stub(:save).and_return(false)
        post :create, :current_day_route => {}
        assigns(:current_day_route).should be_a_new(CurrentDayRoute)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayRoute.any_instance.stub(:save).and_return(false)
        post :create, :current_day_route => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested current_day_route" do
        current_day_route = CurrentDayRoute.create! valid_attributes
        # Assuming there are no other current_day_routes in the database, this
        # specifies that the CurrentDayRoute created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CurrentDayRoute.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => current_day_route.id, :current_day_route => {'these' => 'params'}
      end

      it "assigns the requested current_day_route as @current_day_route" do
        current_day_route = CurrentDayRoute.create! valid_attributes
        put :update, :id => current_day_route.id, :current_day_route => valid_attributes
        assigns(:current_day_route).should eq(current_day_route)
      end

      it "redirects to the current_day_route" do
        current_day_route = CurrentDayRoute.create! valid_attributes
        put :update, :id => current_day_route.id, :current_day_route => valid_attributes
        response.should redirect_to(current_day_route)
      end
    end

    describe "with invalid params" do
      it "assigns the current_day_route as @current_day_route" do
        current_day_route = CurrentDayRoute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayRoute.any_instance.stub(:save).and_return(false)
        put :update, :id => current_day_route.id, :current_day_route => {}
        assigns(:current_day_route).should eq(current_day_route)
      end

      it "re-renders the 'edit' template" do
        current_day_route = CurrentDayRoute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CurrentDayRoute.any_instance.stub(:save).and_return(false)
        put :update, :id => current_day_route.id, :current_day_route => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested current_day_route" do
      current_day_route = CurrentDayRoute.create! valid_attributes
      expect {
        delete :destroy, :id => current_day_route.id
      }.to change(CurrentDayRoute, :count).by(-1)
    end

    it "redirects to the current_day_routes list" do
      current_day_route = CurrentDayRoute.create! valid_attributes
      delete :destroy, :id => current_day_route.id
      response.should redirect_to(current_day_routes_url)
    end
  end

end
