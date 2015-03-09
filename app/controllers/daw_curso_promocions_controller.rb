class DawCursoPromocionsController < ApplicationController
  before_action :set_daw_curso_promocion, only: [:show, :edit, :update, :destroy]

  # GET /daw_curso_promocions
  # GET /daw_curso_promocions.json
  def index
    @daw_curso_promocions = DawCursoPromocion.all
  end

  # GET /daw_curso_promocions/1
  # GET /daw_curso_promocions/1.json
  def show
  end

  # GET /daw_curso_promocions/new
  def new
    @daw_curso_promocion = DawCursoPromocion.new
  end

  # GET /daw_curso_promocions/1/edit
  def edit
  end

  # POST /daw_curso_promocions
  # POST /daw_curso_promocions.json
  def create
    @daw_curso_promocion = DawCursoPromocion.new(daw_curso_promocion_params)

    respond_to do |format|
      if @daw_curso_promocion.save
        format.html { redirect_to @daw_curso_promocion, notice: 'Daw curso promocion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso_promocion }
      else
        format.html { render :new }
        format.json { render json: @daw_curso_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_curso_promocions/1
  # PATCH/PUT /daw_curso_promocions/1.json
  def update
    respond_to do |format|
      if @daw_curso_promocion.update(daw_curso_promocion_params)
        format.html { redirect_to @daw_curso_promocion, notice: 'Daw curso promocion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso_promocion }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_curso_promocions/1
  # DELETE /daw_curso_promocions/1.json
  def destroy
    @daw_curso_promocion.destroy
    respond_to do |format|
      format.html { redirect_to daw_curso_promocions_url, notice: 'Daw curso promocion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso_promocion
      @daw_curso_promocion = DawCursoPromocion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_promocion_params
      params.require(:daw_curso_promocion).permit(:daw_promocion_id)
    end
end
