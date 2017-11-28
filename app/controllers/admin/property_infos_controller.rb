class Admin::PropertyInfosController < ApplicationController
  before_action :set_admin_property_info, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_infos
  # GET /admin/property_infos.json
  def index
    @admin_property_infos = Admin::PropertyInfo.all
  end

  # GET /admin/property_infos/1
  # GET /admin/property_infos/1.json
  def show
  end

  # GET /admin/property_infos/new
  def new
    @admin_property_info = Admin::PropertyInfo.new
  end

  # GET /admin/property_infos/1/edit
  def edit
  end

  # POST /admin/property_infos
  # POST /admin/property_infos.json
  def create
    @admin_property_info = Admin::PropertyInfo.new(admin_property_info_params)

    respond_to do |format|
      if @admin_property_info.save
        format.html { redirect_to @admin_property_info, notice: 'Property info was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_info }
      else
        format.html { render :new }
        format.json { render json: @admin_property_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_infos/1
  # PATCH/PUT /admin/property_infos/1.json
  def update
    respond_to do |format|
      if @admin_property_info.update(admin_property_info_params)
        format.html { redirect_to @admin_property_info, notice: 'Property info was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_info }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_infos/1
  # DELETE /admin/property_infos/1.json
  def destroy
    @admin_property_info.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_infos_url, notice: 'Property info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_info
      @admin_property_info = Admin::PropertyInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_info_params
      params.require(:admin_property_info).permit(:property_type1, :property_type2, :transaction_type, :mediation_date, :condition, :supplementary_explanation)
    end
end
