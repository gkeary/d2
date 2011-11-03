class CurrendDayRoutesController < ApplicationController
  # GET /currend_day_routes
  # GET /currend_day_routes.json
  def index
    @currend_day_routes = CurrendDayRoute.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @currend_day_routes }
    end
  end

  # GET /currend_day_routes/1
  # GET /currend_day_routes/1.json
  def show
    @currend_day_route = CurrendDayRoute.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @currend_day_route }
    end
  end

  # GET /currend_day_routes/new
  # GET /currend_day_routes/new.json
  def new
    @currend_day_route = CurrendDayRoute.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @currend_day_route }
    end
  end

  # GET /currend_day_routes/1/edit
  def edit
    @currend_day_route = CurrendDayRoute.find(params[:id])
  end

  # POST /currend_day_routes
  # POST /currend_day_routes.json
  def create
    @currend_day_route = CurrendDayRoute.new(params[:currend_day_route])

    respond_to do |format|
      if @currend_day_route.save
        format.html { redirect_to @currend_day_route, notice: 'Currend day route was successfully created.' }
        format.json { render json: @currend_day_route, status: :created, location: @currend_day_route }
      else
        format.html { render action: "new" }
        format.json { render json: @currend_day_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /currend_day_routes/1
  # PUT /currend_day_routes/1.json
  def update
    @currend_day_route = CurrendDayRoute.find(params[:id])

    respond_to do |format|
      if @currend_day_route.update_attributes(params[:currend_day_route])
        format.html { redirect_to @currend_day_route, notice: 'Currend day route was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @currend_day_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currend_day_routes/1
  # DELETE /currend_day_routes/1.json
  def destroy
    @currend_day_route = CurrendDayRoute.find(params[:id])
    @currend_day_route.destroy

    respond_to do |format|
      format.html { redirect_to currend_day_routes_url }
      format.json { head :ok }
    end
  end
end
