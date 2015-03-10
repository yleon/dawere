class DawCursosController < ApplicationController
  before_action :set_daw_curso, only: [:show, :edit, :update, :destroy]

  # GET /daw_cursos
  # GET /daw_cursos.json
  def index
    @daw_cursos = DawCurso.all
  end

  # GET /daw_cursos/1
  # GET /daw_cursos/1.json
  def show
  end

  # GET /daw_cursos/new
  def new
    @daw_curso = DawCurso.new
  end

  # GET /daw_cursos/1/edit
  def edit
  end

  # POST /daw_cursos
  # POST /daw_cursos.json
  def create
    @daw_curso = DawCurso.new(daw_curso_params)

    respond_to do |format|
      if @daw_curso.save
        format.html { redirect_to @daw_curso, notice: 'Daw curso was successfully created.' }
        format.json { render :show, status: :created, location: @daw_curso }
      else
        format.html { render :new }
        format.json { render json: @daw_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_cursos/1
  # PATCH/PUT /daw_cursos/1.json
  def update
    respond_to do |format|
      if @daw_curso.update(daw_curso_params)
        format.html { redirect_to @daw_curso, notice: 'Daw curso was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_curso }
      else
        format.html { render :edit }
        format.json { render json: @daw_curso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_cursos/1
  # DELETE /daw_cursos/1.json
  def destroy
    @daw_curso.destroy
    respond_to do |format|
      format.html { redirect_to daw_cursos_url, notice: 'Daw curso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_curso
      @daw_curso = DawCurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_curso_params
      params[:daw_curso]
    end
end
