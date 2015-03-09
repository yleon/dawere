class DawPreguntaesController < ApplicationController
  before_action :set_daw_preguntae, only: [:show, :edit, :update, :destroy]

  # GET /daw_preguntaes
  # GET /daw_preguntaes.json
  def index
    @daw_preguntaes = DawPreguntae.all
  end

  # GET /daw_preguntaes/1
  # GET /daw_preguntaes/1.json
  def show
  end

  # GET /daw_preguntaes/new
  def new
    @daw_preguntae = DawPreguntae.new
  end

  # GET /daw_preguntaes/1/edit
  def edit
  end

  # POST /daw_preguntaes
  # POST /daw_preguntaes.json
  def create
    @daw_preguntae = DawPreguntae.new(daw_preguntae_params)

    respond_to do |format|
      if @daw_preguntae.save
        format.html { redirect_to @daw_preguntae, notice: 'Daw preguntae was successfully created.' }
        format.json { render :show, status: :created, location: @daw_preguntae }
      else
        format.html { render :new }
        format.json { render json: @daw_preguntae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_preguntaes/1
  # PATCH/PUT /daw_preguntaes/1.json
  def update
    respond_to do |format|
      if @daw_preguntae.update(daw_preguntae_params)
        format.html { redirect_to @daw_preguntae, notice: 'Daw preguntae was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_preguntae }
      else
        format.html { render :edit }
        format.json { render json: @daw_preguntae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_preguntaes/1
  # DELETE /daw_preguntaes/1.json
  def destroy
    @daw_preguntae.destroy
    respond_to do |format|
      format.html { redirect_to daw_preguntaes_url, notice: 'Daw preguntae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_preguntae
      @daw_preguntae = DawPreguntae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_preguntae_params
      params.require(:daw_preguntae).permit(:pre_encabezado, :pre_orden, :daw_sondeo_id)
    end
end
