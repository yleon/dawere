class DawTemasController < ApplicationController
  before_action :set_daw_tema, only: [:show, :edit, :update, :destroy]

  # GET /daw_temas
  # GET /daw_temas.json
  def index
    @daw_temas = DawTema.all
  end

  # GET /daw_temas/1
  # GET /daw_temas/1.json
  def show
  end

  # GET /daw_temas/new
  def new
    @daw_tema = DawTema.new
  end

  # GET /daw_temas/1/edit
  def edit
  end

  # POST /daw_temas
  # POST /daw_temas.json
  def create
    @daw_tema = DawTema.new(daw_tema_params)

    respond_to do |format|
      if @daw_tema.save
        format.html { redirect_to @daw_tema, notice: 'Daw tema was successfully created.' }
        format.json { render :show, status: :created, location: @daw_tema }
      else
        format.html { render :new }
        format.json { render json: @daw_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_temas/1
  # PATCH/PUT /daw_temas/1.json
  def update
    respond_to do |format|
      if @daw_tema.update(daw_tema_params)
        format.html { redirect_to @daw_tema, notice: 'Daw tema was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_tema }
      else
        format.html { render :edit }
        format.json { render json: @daw_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_temas/1
  # DELETE /daw_temas/1.json
  def destroy
    @daw_tema.destroy
    respond_to do |format|
      format.html { redirect_to daw_temas_url, notice: 'Daw tema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_tema
      @daw_tema = DawTema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_tema_params
      params.require(:daw_tema).permit(:tema_nombre, :tema_duracion)
    end
end

