class DawCursoEncuestsController < ApplicationController
  before_action :set_daw_curso_encuest, only: [:show, :edit, :update, :destroy]

  # GET /daw_curso_encuests
  # GET /daw_curso_encuests.json
  def index
    @daw_curso_encuests = DawCursoEncuest.all
  end

  # GET /daw_curso_encuests/1
  # GET /daw_curso_encuests/1.json
  def show
  end

  # GET /daw_curso_encuests/new
  def new
    @daw_curso_encuest = DawCursoEncuest.new
  end

  # GET /daw_curso_encuests/1/edit
  def edit
  end

  # POST /daw_curso_encuests
  # POST /daw_curso_encuests.json
  def create
    @daw_curso_encuest = DawCursoEncuest.new(daw_curso_encuest_params)

    respond_to do |format|
      if @daw_curso_encuest.save
        format.html { redirect_to @daw_curso_encuest, notice: 'Daw curso encuest was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso_encuest }
      else
        format.html { render :new }
        format.json { render json: @daw_curso_encuest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_curso_encuests/1
  # PATCH/PUT /daw_curso_encuests/1.json
  def update
    respond_to do |format|
      if @daw_curso_encuest.update(daw_curso_encuest_params)
        format.html { redirect_to @daw_curso_encuest, notice: 'Daw curso encuest was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso_encuest }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso_encuest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_curso_encuests/1
  # DELETE /daw_curso_encuests/1.json
  def destroy
    @daw_curso_encuest.destroy
    respond_to do |format|
      format.html { redirect_to daw_curso_encuests_url, notice: 'Daw curso encuest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso_encuest
      @daw_curso_encuest = DawCursoEncuest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_encuest_params
      params.require(:daw_curso_encuest).permit(:curenc_periodo, :daw_encuest_id)
    end
end
