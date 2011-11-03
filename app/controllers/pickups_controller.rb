class PickupsController < ApplicationController
  # GET /pickups
  # GET /pickups.json
  def index
    @pickups = Pickup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pickups }
    end
  end

  # GET /pickups/1
  # GET /pickups/1.json
  def show
    @pickup = Pickup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pickup }
    end
  end

  # GET /pickups/new
  # GET /pickups/new.json
  def new
    @pickup = Pickup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pickup }
    end
  end

  # GET /pickups/1/edit
  def edit
    @pickup = Pickup.find(params[:id])
  end

  # POST /pickups
  # POST /pickups.json
  def create
    @pickup = Pickup.new(params[:pickup])

    respond_to do |format|
      if @pickup.save
        format.html { redirect_to @pickup, notice: 'Pickup was successfully created.' }
        format.json { render json: @pickup, status: :created, location: @pickup }
      else
        format.html { render action: "new" }
        format.json { render json: @pickup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pickups/1
  # PUT /pickups/1.json
  def update
    @pickup = Pickup.find(params[:id])

    respond_to do |format|
      if @pickup.update_attributes(params[:pickup])
        format.html { redirect_to @pickup, notice: 'Pickup was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pickup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickups/1
  # DELETE /pickups/1.json
  def destroy
    @pickup = Pickup.find(params[:id])
    @pickup.destroy

    respond_to do |format|
      format.html { redirect_to pickups_url }
      format.json { head :ok }
    end
  end
end
