class DawActividadsController < ApplicationController
  before_action :set_daw_actividad, only: [:show, :edit, :update, :destroy]

  # GET /daw_actividads
  # GET /daw_actividads.json
  def index
    @daw_actividads = DawActividad.all
  end

  # GET /daw_actividads/1
  # GET /daw_actividads/1.json
  def show
  end

  # GET /daw_actividads/new
  def new
    @daw_actividad = DawActividad.new
  end

  # GET /daw_actividads/1/edit
  def edit
  end

  # POST /daw_actividads
  # POST /daw_actividads.json
  def create
    @daw_actividad = DawActividad.new(daw_actividad_params)

    respond_to do |format|
      if @daw_actividad.save
        format.html { redirect_to @daw_actividad, notice: 'Daw actividad was successfully created.' }
        format.json { render :show, status: :created, location: @daw_actividad }
      else
        format.html { render :new }
        format.json { render json: @daw_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_actividads/1
  # PATCH/PUT /daw_actividads/1.json
  def update
    respond_to do |format|
      if @daw_actividad.update(daw_actividad_params)
        format.html { redirect_to @daw_actividad, notice: 'Daw actividad was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_actividad }
      else
        format.html { render :edit }
        format.json { render json: @daw_actividad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_actividads/1
  # DELETE /daw_actividads/1.json
  def destroy
    @daw_actividad.destroy
    respond_to do |format|
      format.html { redirect_to daw_actividads_url, notice: 'Daw actividad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_actividad
      @daw_actividad = DawActividad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_actividad_params
      params.require(:daw_actividad).permit(:act_nombre, :act_descripcion, :act_disponible, :act_duracion, :act_estado, :act_cantidadpreg)
    end
end

