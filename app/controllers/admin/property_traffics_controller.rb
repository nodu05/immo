class Admin::PropertyTrafficsController < ApplicationController
  before_action :set_admin_property_traffic, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_traffics
  # GET /admin/property_traffics.json
  def index
    @admin_property_traffics = Admin::PropertyTraffic.all
  end

  # GET /admin/property_traffics/1
  # GET /admin/property_traffics/1.json
  def show
  end

  # GET /admin/property_traffics/new
  def new
    @admin_property_traffic = Admin::PropertyTraffic.new
  end

  # GET /admin/property_traffics/1/edit
  def edit
  end

  # POST /admin/property_traffics
  # POST /admin/property_traffics.json
  def create
    @admin_property_traffic = Admin::PropertyTraffic.new(admin_property_traffic_params)

    respond_to do |format|
      if @admin_property_traffic.save
        format.html { redirect_to @admin_property_traffic, notice: 'Property traffic was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_traffic }
      else
        format.html { render :new }
        format.json { render json: @admin_property_traffic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_traffics/1
  # PATCH/PUT /admin/property_traffics/1.json
  def update
    respond_to do |format|
      if @admin_property_traffic.update(admin_property_traffic_params)
        format.html { redirect_to @admin_property_traffic, notice: 'Property traffic was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_traffic }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_traffic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_traffics/1
  # DELETE /admin/property_traffics/1.json
  def destroy
    @admin_property_traffic.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_traffics_url, notice: 'Property traffic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_traffic
      @admin_property_traffic = Admin::PropertyTraffic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_traffic_params
      params.require(:admin_property_traffic).permit(:property_id, :route_name1, :station_name1, :station_walkm1, :station_walkd1, :station_car1, :station_bus1, :busstop_walkm1, :busstop_walkd1, :busroute_name1, :busstop_name1, :route_name2, :station_name2, :station_walkm2, :station_walkd2, :station_car2, :station_bus2, :busstop_walkm2, :busstop_walkd2, :busroute_name2, :busstop_name2, :route_name3, :station_name3, :station_walkm3, :station_walkd3, :station_car3, :station_bus3, :busstop_walkm3, :busstop_walkd3, :busroute_name3, :busstop_name3, :other_transportation)
    end
end
