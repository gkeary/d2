class CurrentDayRoutesController < ApplicationController
  # GET /current_day_routes
  # GET /current_day_routes.json
  def index
    @current_day_routes = CurrentDayRoute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_day_routes }
    end
  end

  # GET /current_day_routes/1
  # GET /current_day_routes/1.json
  def show
    @current_day_route = CurrentDayRoute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_day_route }
    end
  end

  # GET /current_day_routes/new
  # GET /current_day_routes/new.json
  def new
    @current_day_route = CurrentDayRoute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_day_route }
    end
  end

  # GET /current_day_routes/1/edit
  def edit
    @current_day_route = CurrentDayRoute.find(params[:id])
  end

  # POST /current_day_routes
  # POST /current_day_routes.json
  def create
    @current_day_route = CurrentDayRoute.new(params[:current_day_route])

    respond_to do |format|
      if @current_day_route.save
        format.html { redirect_to @current_day_route, notice: 'Current day route was successfully created.' }
        format.json { render json: @current_day_route, status: :created, location: @current_day_route }
      else
        format.html { render action: "new" }
        format.json { render json: @current_day_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /current_day_routes/1
  # PUT /current_day_routes/1.json
  def update
    @current_day_route = CurrentDayRoute.find(params[:id])

    respond_to do |format|
      if @current_day_route.update_attributes(params[:current_day_route])
        format.html { redirect_to @current_day_route, notice: 'Current day route was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_day_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_day_routes/1
  # DELETE /current_day_routes/1.json
  def destroy
    @current_day_route = CurrentDayRoute.find(params[:id])
    @current_day_route.destroy

    respond_to do |format|
      format.html { redirect_to current_day_routes_url }
      format.json { head :ok }
    end
  end
end
