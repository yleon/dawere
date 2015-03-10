class DawRepresentantesController < ApplicationController
  before_action :set_daw_representante, only: [:show, :edit, :update, :destroy]

  # GET /daw_representantes
  # GET /daw_representantes.json
  def index
    @daw_representantes = DawRepresentante.all
  end

  # GET /daw_representantes/1
  # GET /daw_representantes/1.json
  def show
  end

  # GET /daw_representantes/new
  def new
    @daw_representante = DawRepresentante.new
  end

  # GET /daw_representantes/1/edit
  def edit
  end

  # POST /daw_representantes
  # POST /daw_representantes.json
  def create
    @daw_representante = DawRepresentante.new(daw_representante_params)

    respond_to do |format|
      if @daw_representante.save
        format.html { redirect_to @daw_representante, notice: 'Daw representante was successfully created.' }
        format.json { render :show, status: :created, location: @daw_representante }
      else
        format.html { render :new }
        format.json { render json: @daw_representante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_representantes/1
  # PATCH/PUT /daw_representantes/1.json
  def update
    respond_to do |format|
      if @daw_representante.update(daw_representante_params)
        format.html { redirect_to @daw_representante, notice: 'Daw representante was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_representante }
      else
        format.html { render :edit }
        format.json { render json: @daw_representante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_representantes/1
  # DELETE /daw_representantes/1.json
  def destroy
    @daw_representante.destroy
    respond_to do |format|
      format.html { redirect_to daw_representantes_url, notice: 'Daw representante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_representante
      @daw_representante = DawRepresentante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_representante_params
      params.require(:daw_representante).permit(:repr_profesion, :repr_sostenfamiliar)
    end
end
