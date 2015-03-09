class DawEncuestsController < ApplicationController
  before_action :set_daw_encuest, only: [:show, :edit, :update, :destroy]

  # GET /daw_encuests
  # GET /daw_encuests.json
  def index
    @daw_encuests = DawEncuest.all
  end

  # GET /daw_encuests/1
  # GET /daw_encuests/1.json
  def show
  end

  # GET /daw_encuests/new
  def new
    @daw_encuest = DawEncuest.new
  end

  # GET /daw_encuests/1/edit
  def edit
  end

  # POST /daw_encuests
  # POST /daw_encuests.json
  def create
    @daw_encuest = DawEncuest.new(daw_encuest_params)

    respond_to do |format|
      if @daw_encuest.save
        format.html { redirect_to @daw_encuest, notice: 'Daw encuest was successfully created.' }
        format.json { render :show, status: :created, location: @daw_encuest }
      else
        format.html { render :new }
        format.json { render json: @daw_encuest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_encuests/1
  # PATCH/PUT /daw_encuests/1.json
  def update
    respond_to do |format|
      if @daw_encuest.update(daw_encuest_params)
        format.html { redirect_to @daw_encuest, notice: 'Daw encuest was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_encuest }
      else
        format.html { render :edit }
        format.json { render json: @daw_encuest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_encuests/1
  # DELETE /daw_encuests/1.json
  def destroy
    @daw_encuest.destroy
    respond_to do |format|
      format.html { redirect_to daw_encuests_url, notice: 'Daw encuest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_encuest
      @daw_encuest = DawEncuest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_encuest_params
      params.require(:daw_encuest).permit(:enc_nombre, :enc_descripcion, :enc_tipoencuest)
    end
end
