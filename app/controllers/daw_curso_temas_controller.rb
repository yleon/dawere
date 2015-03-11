class DawCursoTemasController < ApplicationController
  before_action :set_daw_curso_tema, only: [:show, :edit, :update, :destroy]

  # GET /daw_curso_temas
  # GET /daw_curso_temas.json
  def index
    @daw_curso_temas = DawCursoTema.all
  end

  # GET /daw_curso_temas/1
  # GET /daw_curso_temas/1.json
  def show
  end

  # GET /daw_curso_temas/new
  def new
    @daw_curso_tema = DawCursoTema.new
  end

  # GET /daw_curso_temas/1/edit
  def edit
  end

  # POST /daw_curso_temas
  # POST /daw_curso_temas.json
  def create
    @daw_curso_tema = DawCursoTema.new(daw_curso_tema_params)

    respond_to do |format|
      if @daw_curso_tema.save
        format.html { redirect_to @daw_curso_tema, notice: 'Daw curso tema was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso_tema }
      else
        format.html { render :new }
        format.json { render json: @daw_curso_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_curso_temas/1
  # PATCH/PUT /daw_curso_temas/1.json
  def update
    respond_to do |format|
      if @daw_curso_tema.update(daw_curso_tema_params)
        format.html { redirect_to @daw_curso_tema, notice: 'Daw curso tema was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso_tema }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_curso_temas/1
  # DELETE /daw_curso_temas/1.json
  def destroy
    @daw_curso_tema.destroy
    respond_to do |format|
      format.html { redirect_to daw_curso_temas_url, notice: 'Daw curso tema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso_tema
      @daw_curso_tema = DawCursoTema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_tema_params
      params.require(:daw_curso_tema).permit(:cursotema_ordentema,:cursotema_semana)
    end
end
