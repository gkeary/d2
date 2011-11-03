class CurrentDayPickupsController < ApplicationController
  # GET /current_day_pickups
  # GET /current_day_pickups.json
  def index
    @current_day_pickups = CurrentDayPickup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_day_pickups }
    end
  end

  # GET /current_day_pickups/1
  # GET /current_day_pickups/1.json
  def show
    @current_day_pickup = CurrentDayPickup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_day_pickup }
    end
  end

  # GET /current_day_pickups/new
  # GET /current_day_pickups/new.json
  def new
    @current_day_pickup = CurrentDayPickup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_day_pickup }
    end
  end

  # GET /current_day_pickups/1/edit
  def edit
    @current_day_pickup = CurrentDayPickup.find(params[:id])
  end

  # POST /current_day_pickups
  # POST /current_day_pickups.json
  def create
    @current_day_pickup = CurrentDayPickup.new(params[:current_day_pickup])

    respond_to do |format|
      if @current_day_pickup.save
        format.html { redirect_to @current_day_pickup, notice: 'Current day pickup was successfully created.' }
        format.json { render json: @current_day_pickup, status: :created, location: @current_day_pickup }
      else
        format.html { render action: "new" }
        format.json { render json: @current_day_pickup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /current_day_pickups/1
  # PUT /current_day_pickups/1.json
  def update
    @current_day_pickup = CurrentDayPickup.find(params[:id])

    respond_to do |format|
      if @current_day_pickup.update_attributes(params[:current_day_pickup])
        format.html { redirect_to @current_day_pickup, notice: 'Current day pickup was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_day_pickup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_day_pickups/1
  # DELETE /current_day_pickups/1.json
  def destroy
    @current_day_pickup = CurrentDayPickup.find(params[:id])
    @current_day_pickup.destroy

    respond_to do |format|
      format.html { redirect_to current_day_pickups_url }
      format.json { head :ok }
    end
  end
end
