class DawGradosController < ApplicationController
  before_action :set_daw_grado, only: [:show, :edit, :update, :destroy]

  # GET /daw_grados
  # GET /daw_grados.json
  def index
    @daw_grados = DawGrado.all
  end

  # GET /daw_grados/1
  # GET /daw_grados/1.json
  def show
  end

  # GET /daw_grados/new
  def new
    @daw_grado = DawGrado.new
  end

  # GET /daw_grados/1/edit
  def edit
  end

  # POST /daw_grados
  # POST /daw_grados.json
  def create
    @daw_grado = DawGrado.new(daw_grado_params)

    respond_to do |format|
      if @daw_grado.save
        format.html { redirect_to @daw_grado, notice: 'Daw grado was successfully created.' }
        format.json { render :show, status: :created, location: @daw_grado }
      else
        format.html { render :new }
        format.json { render json: @daw_grado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_grados/1
  # PATCH/PUT /daw_grados/1.json
  def update
    respond_to do |format|
      if @daw_grado.update(daw_grado_params)
        format.html { redirect_to @daw_grado, notice: 'Daw grado was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_grado }
      else
        format.html { render :edit }
        format.json { render json: @daw_grado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_grados/1
  # DELETE /daw_grados/1.json
  def destroy
    @daw_grado.destroy
    respond_to do |format|
      format.html { redirect_to daw_grados_url, notice: 'Daw grado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_grado
      @daw_grado = DawGrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_grado_params
      params[:daw_grado]
    end
end
