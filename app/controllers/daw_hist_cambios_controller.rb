class DawHistCambiosController < ApplicationController
  before_action :set_daw_hist_cambio, only: [:show, :edit, :update, :destroy]

  # GET /daw_hist_cambios
  # GET /daw_hist_cambios.json
  def index
    @daw_hist_cambios = DawHistCambio.all
  end

  # GET /daw_hist_cambios/1
  # GET /daw_hist_cambios/1.json
  def show
  end

  # GET /daw_hist_cambios/new
  def new
    @daw_hist_cambio = DawHistCambio.new
  end

  # GET /daw_hist_cambios/1/edit
  def edit
  end

  # POST /daw_hist_cambios
  # POST /daw_hist_cambios.json
  def create
    @daw_hist_cambio = DawHistCambio.new(daw_hist_cambio_params)

    respond_to do |format|
      if @daw_hist_cambio.save
        format.html { redirect_to @daw_hist_cambio, notice: 'Daw hist cambio was successfully created.' }
        format.json { render :show, status: :created, location: @daw_hist_cambio }
      else
        format.html { render :new }
        format.json { render json: @daw_hist_cambio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_hist_cambios/1
  # PATCH/PUT /daw_hist_cambios/1.json
  def update
    respond_to do |format|
      if @daw_hist_cambio.update(daw_hist_cambio_params)
        format.html { redirect_to @daw_hist_cambio, notice: 'Daw hist cambio was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_hist_cambio }
      else
        format.html { render :edit }
        format.json { render json: @daw_hist_cambio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_hist_cambios/1
  # DELETE /daw_hist_cambios/1.json
  def destroy
    @daw_hist_cambio.destroy
    respond_to do |format|
      format.html { redirect_to daw_hist_cambios_url, notice: 'Daw hist cambio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_hist_cambio
      @daw_hist_cambio = DawHistCambio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_hist_cambio_params
      params.require(:daw_hist_cambio).permit(:hcam_idtabla, :hcam_idregistro, :hcam_fecha, :hcam_descripcion, :hcam_campo, :hcam_estado, :hcam_login)
    end
end
