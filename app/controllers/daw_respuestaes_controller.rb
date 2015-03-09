class DawRespuestaesController < ApplicationController
  before_action :set_daw_respuestae, only: [:show, :edit, :update, :destroy]

  # GET /daw_respuestaes
  # GET /daw_respuestaes.json
  def index
    @daw_respuestaes = DawRespuestae.all
  end

  # GET /daw_respuestaes/1
  # GET /daw_respuestaes/1.json
  def show
  end

  # GET /daw_respuestaes/new
  def new
    @daw_respuestae = DawRespuestae.new
  end

  # GET /daw_respuestaes/1/edit
  def edit
  end

  # POST /daw_respuestaes
  # POST /daw_respuestaes.json
  def create
    @daw_respuestae = DawRespuestae.new(daw_respuestae_params)

    respond_to do |format|
      if @daw_respuestae.save
        format.html { redirect_to @daw_respuestae, notice: 'Daw respuestae was successfully created.' }
        format.json { render :show, status: :created, location: @daw_respuestae }
      else
        format.html { render :new }
        format.json { render json: @daw_respuestae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_respuestaes/1
  # PATCH/PUT /daw_respuestaes/1.json
  def update
    respond_to do |format|
      if @daw_respuestae.update(daw_respuestae_params)
        format.html { redirect_to @daw_respuestae, notice: 'Daw respuestae was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_respuestae }
      else
        format.html { render :edit }
        format.json { render json: @daw_respuestae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_respuestaes/1
  # DELETE /daw_respuestaes/1.json
  def destroy
    @daw_respuestae.destroy
    respond_to do |format|
      format.html { redirect_to daw_respuestaes_url, notice: 'Daw respuestae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_respuestae
      @daw_respuestae = DawRespuestae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_respuestae_params
      params.require(:daw_respuestae).permit(:res_valor, :res_fecha, :daw_preguntae_id)
    end
end
