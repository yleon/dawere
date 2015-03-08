class DawHistoricoCambiosController < ApplicationController
  before_action :set_daw_historico_cambio, only: [:show, :edit, :update, :destroy]

  # GET /daw_historico_cambios
  # GET /daw_historico_cambios.json
  def index
    @daw_historico_cambios = DawHistoricoCambio.all
  end

  # GET /daw_historico_cambios/1
  # GET /daw_historico_cambios/1.json
  def show
  end

  # GET /daw_historico_cambios/new
  def new
    @daw_historico_cambio = DawHistoricoCambio.new
  end

  # GET /daw_historico_cambios/1/edit
  def edit
  end

  # POST /daw_historico_cambios
  # POST /daw_historico_cambios.json
  def create
    @daw_historico_cambio = DawHistoricoCambio.new(daw_historico_cambio_params)

    respond_to do |format|
      if @daw_historico_cambio.save
        format.html { redirect_to @daw_historico_cambio, notice: 'Daw historico cambio was successfully created.' }
        format.json { render :show, status: :created, location: @daw_historico_cambio }
      else
        format.html { render :new }
        format.json { render json: @daw_historico_cambio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_historico_cambios/1
  # PATCH/PUT /daw_historico_cambios/1.json
  def update
    respond_to do |format|
      if @daw_historico_cambio.update(daw_historico_cambio_params)
        format.html { redirect_to @daw_historico_cambio, notice: 'Daw historico cambio was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_historico_cambio }
      else
        format.html { render :edit }
        format.json { render json: @daw_historico_cambio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_historico_cambios/1
  # DELETE /daw_historico_cambios/1.json
  def destroy
    @daw_historico_cambio.destroy
    respond_to do |format|
      format.html { redirect_to daw_historico_cambios_url, notice: 'Daw historico cambio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_historico_cambio
      @daw_historico_cambio = DawHistoricoCambio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_historico_cambio_params
      params.require(:daw_historico_cambio).permit(:his_cam_idtabla, :his_cam_idregistro, :his_cam_fecha, :his_cam_descripcion, :his_cam_campo, :his_cam_estado, :his_cam_login)
    end
end
