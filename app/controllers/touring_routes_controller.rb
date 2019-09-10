class TouringRoutesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :show, :edit, :update, :destroy]
  before_action :set_touring_route, only: [:show, :edit, :update, :destroy]

  # GET /touring_routes
  # GET /touring_routes.json
  def index
    @touring_routes = TouringRoute.all
  end

  # GET /touring_routes/1
  # GET /touring_routes/1.json
  def show
        @comment = @touring_route.comments.build
  end

  # GET /touring_routes/new
  def new
    @touring_route = TouringRoute.new
  end

  # GET /touring_routes/1/edit
  def edit
  end

  # POST /touring_routes
  # POST /touring_routes.json
  def create
    p "**** dubug ****"
    p touring_route_params
    @touring_route = TouringRoute.new(touring_route_params)

    respond_to do |format|
      if @touring_route.save
        format.html { redirect_to @touring_route, notice: 'Touring route was successfully created.' }
        format.json { render :show, status: :created, location: @touring_route }
      else
        format.html { render :new }
        format.json { render json: @touring_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /touring_routes/1
  # PATCH/PUT /touring_routes/1.json
  def update
    respond_to do |format|
      if @touring_route.update(touring_route_params)
        format.html { redirect_to @touring_route, notice: 'Touring route was successfully updated.' }
        format.json { render :show, status: :ok, location: @touring_route }
      else
        format.html { render :edit }
        format.json { render json: @touring_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /touring_routes/1
  # DELETE /touring_routes/1.json
  def destroy
    @touring_route.destroy
    respond_to do |format|
      format.html { redirect_to touring_routes_url, notice: 'Touring route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_touring_route
      @touring_route = TouringRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def touring_route_params
      params.require(:touring_route).permit(:touring_name, :touring_desc, :start_date, :end_date, :start_lat, :start_lon, :end_lat, :end_lon, :wp1_lat, :wp1_lon, :wp2_lat, :wp2_lon, :wp3_lat, :wp3_lon, :created_at, :updated_at)
    end
end
