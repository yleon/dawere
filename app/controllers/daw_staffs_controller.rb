class DawStaffsController < ApplicationController
  before_action :set_daw_staff, only: [:show, :edit, :update, :destroy]

  # GET /daw_staffs
  # GET /daw_staffs.json
  def index
    @daw_staffs = DawStaff.all
  end

  # GET /daw_staffs/1
  # GET /daw_staffs/1.json
  def show
  end

  # GET /daw_staffs/new
  def new
    @daw_staff = DawStaff.new
  end

  # GET /daw_staffs/1/edit
  def edit
  end

  # POST /daw_staffs
  # POST /daw_staffs.json
  def create
    @daw_staff = DawStaff.new(daw_staff_params)

    respond_to do |format|
      if @daw_staff.save
        format.html { redirect_to @daw_staff, notice: 'Daw staff was successfully created.' }
        format.json { render :show, status: :created, location: @daw_staff }
      else
        format.html { render :new }
        format.json { render json: @daw_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_staffs/1
  # PATCH/PUT /daw_staffs/1.json
  def update
    respond_to do |format|
      if @daw_staff.update(daw_staff_params)
        format.html { redirect_to @daw_staff, notice: 'Daw staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_staff }
      else
        format.html { render :edit }
        format.json { render json: @daw_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_staffs/1
  # DELETE /daw_staffs/1.json
  def destroy
    @daw_staff.destroy
    respond_to do |format|
      format.html { redirect_to daw_staffs_url, notice: 'Daw staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_staff
      @daw_staff = DawStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_staff_params
      params.require(:daw_staff).permit(:staff_fechaingr, :staff_fechasalida, :staff_estado)
    end
end
