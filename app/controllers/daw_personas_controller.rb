class DawPersonasController < ApplicationController
  before_action :set_daw_persona, only: [:show, :edit, :update, :destroy]

  # GET /daw_personas
  # GET /daw_personas.json
  def index
    @daw_personas = DawPersona.all
  end

  # GET /daw_personas/1
  # GET /daw_personas/1.json
  def show
  end

  # GET /daw_personas/new
  def new
    @daw_persona = DawPersona.new
  end

  # GET /daw_personas/1/edit
  def edit
  end

  # POST /daw_personas
  # POST /daw_personas.json
  def create
    @daw_persona = DawPersona.new(daw_persona_params)

    respond_to do |format|
      if @daw_persona.save
        format.html { redirect_to @daw_persona, notice: 'Daw persona was successfully created.' }
        format.json { render :show, status: :created, location: @daw_persona }
      else
        format.html { render :new }
        format.json { render json: @daw_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_personas/1
  # PATCH/PUT /daw_personas/1.json
  def update
    respond_to do |format|
      if @daw_persona.update(daw_persona_params)
        format.html { redirect_to @daw_persona, notice: 'Daw persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_persona }
      else
        format.html { render :edit }
        format.json { render json: @daw_persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_personas/1
  # DELETE /daw_personas/1.json
  def destroy
    @daw_persona.destroy
    respond_to do |format|
      format.html { redirect_to daw_personas_url, notice: 'Daw persona was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_persona
      @daw_persona = DawPersona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_persona_params
      params.require(:daw_persona).permit(:pers_cedula, :pers_primernom, :pers_segundonom, :pers_primerape, :pers_segundoape, :pers_estadocivil, :pers_fechanac, :pers_sexo, :pers_foto, :pers_email, :pers_tlf1, :pers_tlf2, :pers_tipopers, :daw_lugar_id, :daw_usuario_id)
    end
end
