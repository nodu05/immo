class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:property_type1, :property_type2, :transaction_type, :mediation_date, :condition, :supplementary_explanation, :prefecture, :city, :street, :show_street, :apartment_name, :roomnumber, :buildingnumber, :show_roomnumber, :measurement, :land_area, :building_area1, :building_area2, :occupied_area, :balcony_area, :terrace_area, :privategarden_area, :driveway_burden, :driveway_area, :driveway_part1, :driveway_part2, :setback_class, :setback_distance, :setback_area, :alleyground_class, :alleyground_area, :firstfloor_area, :secondfloor_area, :thirdfloor_area, :otherfloor_area, :development_area1, :total_area, :subdivision, :construction_date, :coownership_area, :coownership, :development_area2, :building_area3, :totalfloor_area, :route_name1, :station_name1, :station_walkm1, :station_walkd1, :station_car1, :station_bus1, :busstop_walkm1, :busstop_walkd1, :busroute_name1, :busstop_name1, :route_name2, :station_name2, :station_walkm2, :station_walkd2, :station_car2, :station_bus2, :busstop_walkm2, :busstop_walkd2, :busroute_name2, :busstop_name2, :route_name3, :station_name3, :station_walkm3, :station_walkd3, :station_car3, :station_bus3, :busstop_walkm3, :busstop_walkd3, :busroute_name3, :busstop_name3, :other_transportation, :floor_plan, :room, :corner_room, :room_level1, :room_type1, :room_size1, :room_level2, :room_type2, :room_size2, :room_level3, :room_type3, :room_size3, :room_level4, :room_type4, :room_size4, :room_level5, :room_type5, :room_size5, :room_level6, :room_type6, :room_size6, :room_level7, :room_type7, :room_size7, :room_level8, :room_type8, :room_size8, :room_level9, :room_type9, :room_size9, :other_room, :price, :consumption_tax, :situation, :situation_date, :transfer, :transfer_date, :move_date, :remuneration, :fee_part, :fee_amount, :town_plan, :register_landcategory, :situation_landcategory, :zoning1, :zoning2, :optimum_site, :zoning_district, :buildingcoverage_ratio, :floorarea_ratio, :floorarea_restriction, :law_restriction, :rebuilding, :nationalland_law, :buildingcertification, :buildingcertification_number, :land_title, :terrain, :architectural_condition, :connecting_road, :paved_road, :roed_class1, :contact_distance1, :designation_road1, :roed_direction1, :roed_width1, :roed_class2, :contact_distance2, :designation_road2, :roed_direction2, :roed_width2, :roed_class3, :contact_distance3, :designation_road3, :roed_direction3, :roed_width3, :roed_class4, :contact_distance4, :designation_road4, :roed_direction4, :roed_width4, :homeowner_association)
    end
end
