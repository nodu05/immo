class Admin::PropertyLayoutsController < ApplicationController
  before_action :set_admin_property_layout, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_layouts
  # GET /admin/property_layouts.json
  def index
    @admin_property_layouts = Admin::PropertyLayout.all
  end

  # GET /admin/property_layouts/1
  # GET /admin/property_layouts/1.json
  def show
  end

  # GET /admin/property_layouts/new
  def new
    @admin_property_layout = Admin::PropertyLayout.new
  end

  # GET /admin/property_layouts/1/edit
  def edit
  end

  # POST /admin/property_layouts
  # POST /admin/property_layouts.json
  def create
    @admin_property_layout = Admin::PropertyLayout.new(admin_property_layout_params)

    respond_to do |format|
      if @admin_property_layout.save
        format.html { redirect_to @admin_property_layout, notice: 'Property layout was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_layout }
      else
        format.html { render :new }
        format.json { render json: @admin_property_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_layouts/1
  # PATCH/PUT /admin/property_layouts/1.json
  def update
    respond_to do |format|
      if @admin_property_layout.update(admin_property_layout_params)
        format.html { redirect_to @admin_property_layout, notice: 'Property layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_layout }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_layouts/1
  # DELETE /admin/property_layouts/1.json
  def destroy
    @admin_property_layout.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_layouts_url, notice: 'Property layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_layout
      @admin_property_layout = Admin::PropertyLayout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_layout_params
      params.require(:admin_property_layout).permit(:property_id, :floor_plan, :room, :corner_room, :room_level1, :room_type1, :room_size1, :room_level2, :room_type2, :room_size2, :room_level3, :room_type3, :room_size3, :room_level4, :room_type4, :room_size4, :room_level5, :room_type5, :room_size5, :room_level6, :room_type6, :room_size6, :room_level7, :room_type7, :room_size7, :room_leve8, :room_type8, :room_size8, :room_level9, :room_type9, :room_size9, :other_room)
    end
end
