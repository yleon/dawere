class DawRolPersInscsController < ApplicationController
  before_action :set_daw_rol_pers_insc, only: [:show, :edit, :update, :destroy]

  # GET /daw_rol_pers_inscs
  # GET /daw_rol_pers_inscs.json
  def index
    @daw_rol_pers_inscs = DawRolPersInsc.all
  end

  # GET /daw_rol_pers_inscs/1
  # GET /daw_rol_pers_inscs/1.json
  def show
  end

  # GET /daw_rol_pers_inscs/new
  def new
    @daw_rol_pers_insc = DawRolPersInsc.new
  end

  # GET /daw_rol_pers_inscs/1/edit
  def edit
  end

  # POST /daw_rol_pers_inscs
  # POST /daw_rol_pers_inscs.json
  def create
    @daw_rol_pers_insc = DawRolPersInsc.new(daw_rol_pers_insc_params)

    respond_to do |format|
      if @daw_rol_pers_insc.save
        format.html { redirect_to @daw_rol_pers_insc, notice: 'Daw rol pers insc was successfully created.' }
        format.json { render :show, status: :created, location: @daw_rol_pers_insc }
      else
        format.html { render :new }
        format.json { render json: @daw_rol_pers_insc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_rol_pers_inscs/1
  # PATCH/PUT /daw_rol_pers_inscs/1.json
  def update
    respond_to do |format|
      if @daw_rol_pers_insc.update(daw_rol_pers_insc_params)
        format.html { redirect_to @daw_rol_pers_insc, notice: 'Daw rol pers insc was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_rol_pers_insc }
      else
        format.html { render :edit }
        format.json { render json: @daw_rol_pers_insc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_rol_pers_inscs/1
  # DELETE /daw_rol_pers_inscs/1.json
  def destroy
    @daw_rol_pers_insc.destroy
    respond_to do |format|
      format.html { redirect_to daw_rol_pers_inscs_url, notice: 'Daw rol pers insc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_rol_pers_insc
      @daw_rol_pers_insc = DawRolPersInsc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_rol_pers_insc_params
      params.require(:daw_rol_pers_insc).permit(:rpi_tiporol, :daw_persona_id)
    end
end
