class DawEstudiantesController < ApplicationController
  before_action :set_daw_estudiante, only: [:show, :edit, :update, :destroy]

  # GET /daw_estudiantes
  # GET /daw_estudiantes.json
  def index
    @daw_estudiantes = DawEstudiante.all
  end

  # GET /daw_estudiantes/1
  # GET /daw_estudiantes/1.json
  def show
  end

  # GET /daw_estudiantes/new
  def new
    @daw_estudiante = DawEstudiante.new
  end

  # GET /daw_estudiantes/1/edit
  def edit
  end

  # POST /daw_estudiantes
  # POST /daw_estudiantes.json
  def create
    @daw_estudiante = DawEstudiante.new(daw_estudiante_params)

    respond_to do |format|
      if @daw_estudiante.save
        format.html { redirect_to @daw_estudiante, notice: 'Daw estudiante was successfully created.' }
        format.json { render :show, status: :created, location: @daw_estudiante }
      else
        format.html { render :new }
        format.json { render json: @daw_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_estudiantes/1
  # PATCH/PUT /daw_estudiantes/1.json
  def update
    respond_to do |format|
      if @daw_estudiante.update(daw_estudiante_params)
        format.html { redirect_to @daw_estudiante, notice: 'Daw estudiante was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_estudiante }
      else
        format.html { render :edit }
        format.json { render json: @daw_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_estudiantes/1
  # DELETE /daw_estudiantes/1.json
  def destroy
    @daw_estudiante.destroy
    respond_to do |format|
      format.html { redirect_to daw_estudiantes_url, notice: 'Daw estudiante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_estudiante
      @daw_estudiante = DawEstudiante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_estudiante_params
      params.require(:daw_estudiante).permit(:estu_nacionalidad, :estu_biografia)
    end
end
