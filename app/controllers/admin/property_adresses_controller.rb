class Admin::PropertyAdressesController < ApplicationController
  before_action :set_admin_property_adress, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_adresses
  # GET /admin/property_adresses.json
  def index
    @admin_property_adresses = Admin::PropertyAdress.all
  end

  # GET /admin/property_adresses/1
  # GET /admin/property_adresses/1.json
  def show
  end

  # GET /admin/property_adresses/new
  def new
    @admin_property_adress = Admin::PropertyAdress.new
  end

  # GET /admin/property_adresses/1/edit
  def edit
  end

  # POST /admin/property_adresses
  # POST /admin/property_adresses.json
  def create
    @admin_property_adress = Admin::PropertyAdress.new(admin_property_adress_params)

    respond_to do |format|
      if @admin_property_adress.save
        format.html { redirect_to @admin_property_adress, notice: 'Property adress was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_adress }
      else
        format.html { render :new }
        format.json { render json: @admin_property_adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_adresses/1
  # PATCH/PUT /admin/property_adresses/1.json
  def update
    respond_to do |format|
      if @admin_property_adress.update(admin_property_adress_params)
        format.html { redirect_to @admin_property_adress, notice: 'Property adress was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_adress }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_adresses/1
  # DELETE /admin/property_adresses/1.json
  def destroy
    @admin_property_adress.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_adresses_url, notice: 'Property adress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_adress
      @admin_property_adress = Admin::PropertyAdress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_adress_params
      params.require(:admin_property_adress).permit(:property_id, :prefecture, :city, :street, :show_street, :apartment_name, :roomnumber, :buildingnumber, :show_roomnumber)
    end
end
