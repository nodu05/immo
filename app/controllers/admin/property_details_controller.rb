class Admin::PropertyDetailsController < ApplicationController
  before_action :set_admin_property_detail, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_details
  # GET /admin/property_details.json
  def index
    @admin_property_details = Admin::PropertyDetail.all
  end

  # GET /admin/property_details/1
  # GET /admin/property_details/1.json
  def show
  end

  # GET /admin/property_details/new
  def new
    @admin_property_detail = Admin::PropertyDetail.new
  end

  # GET /admin/property_details/1/edit
  def edit
  end

  # POST /admin/property_details
  # POST /admin/property_details.json
  def create
    @admin_property_detail = Admin::PropertyDetail.new(admin_property_detail_params)

    respond_to do |format|
      if @admin_property_detail.save
        format.html { redirect_to @admin_property_detail, notice: 'Property detail was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_detail }
      else
        format.html { render :new }
        format.json { render json: @admin_property_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_details/1
  # PATCH/PUT /admin/property_details/1.json
  def update
    respond_to do |format|
      if @admin_property_detail.update(admin_property_detail_params)
        format.html { redirect_to @admin_property_detail, notice: 'Property detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_detail }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_details/1
  # DELETE /admin/property_details/1.json
  def destroy
    @admin_property_detail.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_details_url, notice: 'Property detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_detail
      @admin_property_detail = Admin::PropertyDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_detail_params
      params.require(:admin_property_detail).permit(:property_id, :price, :consumption_tax, :situation, :situation_date, :transfer, :transfer_date, :move_date, :remuneration, :fee_part, :fee_amount, :town_plan, :register_landcategory, :situation_landcategory, :zoning1, :zoning2, :optimum, :_site, :zoning_district, :buildingcoverage_ratio, :floorarea_ratio, :floorarea_restriction, :law_restriction, :rebuilding, :nationalland_law, :buildingcertification, :buildingcertification_number, :land_title, :terrain, :architectural_condition, :connecting_road, :paved_road, :road_class1, :contact_distance1, :designation_road1, :road_direction1, :road_width1, :road_class2, :contact_distance2, :designation_road2, :road_direction2, :road_width2, :road_class3, :contact_distance3, :designation_road3, :road_direction3, :road_width3, :road_class4, :contact_distance4, :designation_road4, :road_direction4, :road_width4, :homeowner_association)
    end
end
