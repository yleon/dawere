class DawInscripcionsController < ApplicationController
  before_action :set_daw_inscripcion, only: [:show, :edit, :update, :destroy]

  # GET /daw_inscripcions
  # GET /daw_inscripcions.json
  def index
    @daw_inscripcions = DawInscripcion.all
  end

  # GET /daw_inscripcions/1
  # GET /daw_inscripcions/1.json
  def show
  end

  # GET /daw_inscripcions/new
  def new
    @daw_inscripcion = DawInscripcion.new
  end

  # GET /daw_inscripcions/1/edit
  def edit
  end

  # POST /daw_inscripcions
  # POST /daw_inscripcions.json
  def create
    @daw_inscripcion = DawInscripcion.new(daw_inscripcion_params)

    respond_to do |format|
      if @daw_inscripcion.save
        format.html { redirect_to @daw_inscripcion, notice: 'Daw inscripcion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_inscripcion }
      else
        format.html { render :new }
        format.json { render json: @daw_inscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_inscripcions/1
  # PATCH/PUT /daw_inscripcions/1.json
  def update
    respond_to do |format|
      if @daw_inscripcion.update(daw_inscripcion_params)
        format.html { redirect_to @daw_inscripcion, notice: 'Daw inscripcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_inscripcion }
      else
        format.html { render :edit }
        format.json { render json: @daw_inscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_inscripcions/1
  # DELETE /daw_inscripcions/1.json
  def destroy
    @daw_inscripcion.destroy
    respond_to do |format|
      format.html { redirect_to daw_inscripcions_url, notice: 'Daw inscripcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_inscripcion
      @daw_inscripcion = DawInscripcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_inscripcion_params
      params.require(:daw_inscripcion).permit(:insc_fechaini, :insc_fechafin, :insc_estado, :insc_tipo, :insc_estadoPago, :insc_estadoDoc)
    end
end
