class DawMatriculasController < ApplicationController
  before_action :set_daw_matricula, only: [:show, :edit, :update, :destroy]

  # GET /daw_matriculas
  # GET /daw_matriculas.json
  def index
    @daw_matriculas = DawMatricula.all
  end

  # GET /daw_matriculas/1
  # GET /daw_matriculas/1.json
  def show
  end

  # GET /daw_matriculas/new
  def new
    @daw_matricula = DawMatricula.new
  end

  # GET /daw_matriculas/1/edit
  def edit
  end

  # POST /daw_matriculas
  # POST /daw_matriculas.json
  def create
    @daw_matricula = DawMatricula.new(daw_matricula_params)

    respond_to do |format|
      if @daw_matricula.save
        format.html { redirect_to @daw_matricula, notice: 'Daw matricula was successfully created.' }
        format.json { render :show, status: :created, location: @daw_matricula }
      else
        format.html { render :new }
        format.json { render json: @daw_matricula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_matriculas/1
  # PATCH/PUT /daw_matriculas/1.json
  def update
    respond_to do |format|
      if @daw_matricula.update(daw_matricula_params)
        format.html { redirect_to @daw_matricula, notice: 'Daw matricula was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_matricula }
      else
        format.html { render :edit }
        format.json { render json: @daw_matricula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_matriculas/1
  # DELETE /daw_matriculas/1.json
  def destroy
    @daw_matricula.destroy
    respond_to do |format|
      format.html { redirect_to daw_matriculas_url, notice: 'Daw matricula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_matricula
      @daw_matricula = DawMatricula.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_matricula_params
      params.require(:daw_matricula).permit(:matri_nombre, :matri_estado, :matri_tipoprecio)
    end
end


