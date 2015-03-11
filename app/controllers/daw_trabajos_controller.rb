class DawTrabajosController < ApplicationController
  before_action :set_daw_trabajo, only: [:show, :edit, :update, :destroy]

  # GET /daw_trabajos
  # GET /daw_trabajos.json
  def index
    @daw_trabajos = DawTrabajo.all
  end

  # GET /daw_trabajos/1
  # GET /daw_trabajos/1.json
  def show
  end

  # GET /daw_trabajos/new
  def new
    @daw_trabajo = DawTrabajo.new
  end

  # GET /daw_trabajos/1/edit
  def edit
  end

  # POST /daw_trabajos
  # POST /daw_trabajos.json
  def create
    @daw_trabajo = DawTrabajo.new(daw_trabajo_params)

    respond_to do |format|
      if @daw_trabajo.save
        format.html { redirect_to @daw_trabajo, notice: 'Daw trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_trabajo }
      else
        format.html { render :new }
        format.json { render json: @daw_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_trabajos/1
  # PATCH/PUT /daw_trabajos/1.json
  def update
    respond_to do |format|
      if @daw_trabajo.update(daw_trabajo_params)
        format.html { redirect_to @daw_trabajo, notice: 'Daw trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_trabajo }
      else
        format.html { render :edit }
        format.json { render json: @daw_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_trabajos/1
  # DELETE /daw_trabajos/1.json
  def destroy
    @daw_trabajo.destroy
    respond_to do |format|
      format.html { redirect_to daw_trabajos_url, notice: 'Daw trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_trabajo
      @daw_trabajo = DawTrabajo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_trabajo_params
      params.require(:daw_trabajo).permit(:trab_nombre, :trab_tipo, :trab_telefono, :trab_direccion, :trab_fecha, :trab_estado, :daw_representante_id)
    end
end
