class DawCursoSondeosController < ApplicationController
  before_action :set_daw_curso_sondeo, only: [:show, :edit, :update, :destroy]

  # GET /daw_curso_sondeos
  # GET /daw_curso_sondeos.json
  def index
    @daw_curso_sondeos = DawCursoSondeo.all
  end

  # GET /daw_curso_sondeos/1
  # GET /daw_curso_sondeos/1.json
  def show
  end

  # GET /daw_curso_sondeos/new
  def new
    @daw_curso_sondeo = DawCursoSondeo.new
  end

  # GET /daw_curso_sondeos/1/edit
  def edit
  end

  # POST /daw_curso_sondeos
  # POST /daw_curso_sondeos.json
  def create
    @daw_curso_sondeo = DawCursoSondeo.new(daw_curso_sondeo_params)

    respond_to do |format|
      if @daw_curso_sondeo.save
        format.html { redirect_to @daw_curso_sondeo, notice: 'Daw curso sondeo was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso_sondeo }
      else
        format.html { render :new }
        format.json { render json: @daw_curso_sondeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_curso_sondeos/1
  # PATCH/PUT /daw_curso_sondeos/1.json
  def update
    respond_to do |format|
      if @daw_curso_sondeo.update(daw_curso_sondeo_params)
        format.html { redirect_to @daw_curso_sondeo, notice: 'Daw curso sondeo was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso_sondeo }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso_sondeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_curso_sondeos/1
  # DELETE /daw_curso_sondeos/1.json
  def destroy
    @daw_curso_sondeo.destroy
    respond_to do |format|
      format.html { redirect_to daw_curso_sondeos_url, notice: 'Daw curso sondeo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso_sondeo
      @daw_curso_sondeo = DawCursoSondeo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_sondeo_params
      params.require(:daw_curso_sondeo).permit(:cur_son_periodo, :daw_sondeo_id)
    end
end
