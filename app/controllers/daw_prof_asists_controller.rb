class DawProfAsistsController < ApplicationController
  before_action :set_daw_prof_asist, only: [:show, :edit, :update, :destroy]

  # GET /daw_prof_asists
  # GET /daw_prof_asists.json
  def index
    @daw_prof_asists = DawProfAsist.all
  end

  # GET /daw_prof_asists/1
  # GET /daw_prof_asists/1.json
  def show
  end

  # GET /daw_prof_asists/new
  def new
    @daw_prof_asist = DawProfAsist.new
  end

  # GET /daw_prof_asists/1/edit
  def edit
  end

  # POST /daw_prof_asists
  # POST /daw_prof_asists.json
  def create
    @daw_prof_asist = DawProfAsist.new(daw_prof_asist_params)

    respond_to do |format|
      if @daw_prof_asist.save
        format.html { redirect_to @daw_prof_asist, notice: 'Daw prof asist was successfully created.' }
        format.json { render :show, status: :created, location: @daw_prof_asist }
      else
        format.html { render :new }
        format.json { render json: @daw_prof_asist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_prof_asists/1
  # PATCH/PUT /daw_prof_asists/1.json
  def update
    respond_to do |format|
      if @daw_prof_asist.update(daw_prof_asist_params)
        format.html { redirect_to @daw_prof_asist, notice: 'Daw prof asist was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_prof_asist }
      else
        format.html { render :edit }
        format.json { render json: @daw_prof_asist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_prof_asists/1
  # DELETE /daw_prof_asists/1.json
  def destroy
    @daw_prof_asist.destroy
    respond_to do |format|
      format.html { redirect_to daw_prof_asists_url, notice: 'Daw prof asist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_prof_asist
      @daw_prof_asist = DawProfAsist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_prof_asist_params
      params.require(:daw_prof_asist).permit(:pa_profesion, :pa_tipo, :pa_fechaingr, :pa_biografia)
    end
end
