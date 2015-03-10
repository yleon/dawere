class DawRespuestsController < ApplicationController
  before_action :set_daw_respuest, only: [:show, :edit, :update, :destroy]

  # GET /daw_respuests
  # GET /daw_respuests.json
  def index
    @daw_respuests = DawRespuest.all
  end

  # GET /daw_respuests/1
  # GET /daw_respuests/1.json
  def show
  end

  # GET /daw_respuests/new
  def new
    @daw_respuest = DawRespuest.new
  end

  # GET /daw_respuests/1/edit
  def edit
  end

  # POST /daw_respuests
  # POST /daw_respuests.json
  def create
    @daw_respuest = DawRespuest.new(daw_respuest_params)

    respond_to do |format|
      if @daw_respuest.save
        format.html { redirect_to @daw_respuest, notice: 'Daw respuest was successfully created.' }
        format.json { render :show, status: :created, location: @daw_respuest }
      else
        format.html { render :new }
        format.json { render json: @daw_respuest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_respuests/1
  # PATCH/PUT /daw_respuests/1.json
  def update
    respond_to do |format|
      if @daw_respuest.update(daw_respuest_params)
        format.html { redirect_to @daw_respuest, notice: 'Daw respuest was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_respuest }
      else
        format.html { render :edit }
        format.json { render json: @daw_respuest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_respuests/1
  # DELETE /daw_respuests/1.json
  def destroy
    @daw_respuest.destroy
    respond_to do |format|
      format.html { redirect_to daw_respuests_url, notice: 'Daw respuest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_respuest
      @daw_respuest = DawRespuest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_respuest_params
      params.require(:daw_respuest).permit(:resp_puntaje, :resp_valor)
    end
end
