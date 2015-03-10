class DawEvaluacionsController < ApplicationController
  before_action :set_daw_evaluacion, only: [:show, :edit, :update, :destroy]

  # GET /daw_evaluacions
  # GET /daw_evaluacions.json
  def index
    @daw_evaluacions = DawEvaluacion.all
  end

  # GET /daw_evaluacions/1
  # GET /daw_evaluacions/1.json
  def show
  end

  # GET /daw_evaluacions/new
  def new
    @daw_evaluacion = DawEvaluacion.new
  end

  # GET /daw_evaluacions/1/edit
  def edit
  end

  # POST /daw_evaluacions
  # POST /daw_evaluacions.json
  def create
    @daw_evaluacion = DawEvaluacion.new(daw_evaluacion_params)

    respond_to do |format|
      if @daw_evaluacion.save
        format.html { redirect_to @daw_evaluacion, notice: 'Daw evaluacion was successfully created.' }
        format.json { render :show, status: :created, location: @daw_evaluacion }
      else
        format.html { render :new }
        format.json { render json: @daw_evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_evaluacions/1
  # PATCH/PUT /daw_evaluacions/1.json
  def update
    respond_to do |format|
      if @daw_evaluacion.update(daw_evaluacion_params)
        format.html { redirect_to @daw_evaluacion, notice: 'Daw evaluacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_evaluacion }
      else
        format.html { render :edit }
        format.json { render json: @daw_evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_evaluacions/1
  # DELETE /daw_evaluacions/1.json
  def destroy
    @daw_evaluacion.destroy
    respond_to do |format|
      format.html { redirect_to daw_evaluacions_url, notice: 'Daw evaluacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_evaluacion
      @daw_evaluacion = DawEvaluacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_evaluacion_params
      params[:daw_evaluacion]
    end
end
