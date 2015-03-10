class DawAsignaturasController < ApplicationController
  before_action :set_daw_asignatura, only: [:show, :edit, :update, :destroy]

  # GET /daw_asignaturas
  # GET /daw_asignaturas.json
  def index
    @daw_asignaturas = DawAsignatura.all
  end

  # GET /daw_asignaturas/1
  # GET /daw_asignaturas/1.json
  def show
  end

  # GET /daw_asignaturas/new
  def new
    @daw_asignatura = DawAsignatura.new
  end

  # GET /daw_asignaturas/1/edit
  def edit
  end

  # POST /daw_asignaturas
  # POST /daw_asignaturas.json
  def create
    @daw_asignatura = DawAsignatura.new(daw_asignatura_params)

    respond_to do |format|
      if @daw_asignatura.save
        format.html { redirect_to @daw_asignatura, notice: 'Daw asignatura was successfully created.' }
        format.json { render :show, status: :created, location: @daw_asignatura }
      else
        format.html { render :new }
        format.json { render json: @daw_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_asignaturas/1
  # PATCH/PUT /daw_asignaturas/1.json
  def update
    respond_to do |format|
      if @daw_asignatura.update(daw_asignatura_params)
        format.html { redirect_to @daw_asignatura, notice: 'Daw asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @daw_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_asignaturas/1
  # DELETE /daw_asignaturas/1.json
  def destroy
    @daw_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to daw_asignaturas_url, notice: 'Daw asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_asignatura
      @daw_asignatura = DawAsignatura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_asignatura_params
      params[:daw_asignatura]
    end
end
