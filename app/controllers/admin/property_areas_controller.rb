class Admin::PropertyAreasController < ApplicationController
  before_action :set_admin_property_area, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_areas
  # GET /admin/property_areas.json
  def index
    @admin_property_areas = Admin::PropertyArea.all
  end

  # GET /admin/property_areas/1
  # GET /admin/property_areas/1.json
  def show
  end

  # GET /admin/property_areas/new
  def new
    @admin_property_area = Admin::PropertyArea.new
  end

  # GET /admin/property_areas/1/edit
  def edit
  end

  # POST /admin/property_areas
  # POST /admin/property_areas.json
  def create
    @admin_property_area = Admin::PropertyArea.new(admin_property_area_params)

    respond_to do |format|
      if @admin_property_area.save
        format.html { redirect_to @admin_property_area, notice: 'Property area was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_area }
      else
        format.html { render :new }
        format.json { render json: @admin_property_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_areas/1
  # PATCH/PUT /admin/property_areas/1.json
  def update
    respond_to do |format|
      if @admin_property_area.update(admin_property_area_params)
        format.html { redirect_to @admin_property_area, notice: 'Property area was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_area }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_areas/1
  # DELETE /admin/property_areas/1.json
  def destroy
    @admin_property_area.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_areas_url, notice: 'Property area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_area
      @admin_property_area = Admin::PropertyArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_area_params
      params.require(:admin_property_area).permit(:property_id, :measurement, :land_area, :occupied_area, :building_area1, :building_area2, :occupied_area, :balcony_area, :terrace_area, :privategarden_area, :driveway_burden, :driveway_area, :driveway_part1, :driveway_part2, :setback_class, :setback_distance, :setback_area, :alleyground_class, :alleyground_area, :firstfloor_area, :secondfloor_area, :thirdfloor_area, :otherfloor_area, :development_area1, :total_area, :subdivision, :construction_date, :coownership_area, :coownership, :development_area2, :building_area3, :totalfloor_area)
    end
end
