class Admin::SelectsController < ApplicationController
  before_action :set_admin_select, only: [:show, :edit, :update, :destroy]

  # GET /admin/selects
  # GET /admin/selects.json
  def index
    @admin_selects = Admin::Select.all
  end

  # GET /admin/selects/1
  # GET /admin/selects/1.json
  def show
  end

  # GET /admin/selects/new
  def new
    @admin_select = Admin::Select.new
  end

  # GET /admin/selects/1/edit
  def edit
  end

  # POST /admin/selects
  # POST /admin/selects.json
  def create
    @admin_select = Admin::Select.new(admin_select_params)

    respond_to do |format|
      if @admin_select.save
        format.html { redirect_to @admin_select, notice: 'Select was successfully created.' }
        format.json { render :show, status: :created, location: @admin_select }
      else
        format.html { render :new }
        format.json { render json: @admin_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/selects/1
  # PATCH/PUT /admin/selects/1.json
  def update
    respond_to do |format|
      if @admin_select.update(admin_select_params)
        format.html { redirect_to @admin_select, notice: 'Select was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_select }
      else
        format.html { render :edit }
        format.json { render json: @admin_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/selects/1
  # DELETE /admin/selects/1.json
  def destroy
    @admin_select.destroy
    respond_to do |format|
      format.html { redirect_to admin_selects_url, notice: 'Select was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_select
      @admin_select = Admin::Select.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_select_params
      params.require(:admin_select).permit(:content_id, :select_id, :return_text)
    end
end
