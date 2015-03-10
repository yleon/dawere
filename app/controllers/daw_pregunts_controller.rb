class DawPreguntsController < ApplicationController
  before_action :set_daw_pregunt, only: [:show, :edit, :update, :destroy]

  # GET /daw_pregunts
  # GET /daw_pregunts.json
  def index
    @daw_pregunts = DawPregunt.all
  end

  # GET /daw_pregunts/1
  # GET /daw_pregunts/1.json
  def show
  end

  # GET /daw_pregunts/new
  def new
    @daw_pregunt = DawPregunt.new
  end

  # GET /daw_pregunts/1/edit
  def edit
  end

  # POST /daw_pregunts
  # POST /daw_pregunts.json
  def create
    @daw_pregunt = DawPregunt.new(daw_pregunt_params)

    respond_to do |format|
      if @daw_pregunt.save
        format.html { redirect_to @daw_pregunt, notice: 'Daw pregunt was successfully created.' }
        format.json { render :show, status: :created, location: @daw_pregunt }
      else
        format.html { render :new }
        format.json { render json: @daw_pregunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_pregunts/1
  # PATCH/PUT /daw_pregunts/1.json
  def update
    respond_to do |format|
      if @daw_pregunt.update(daw_pregunt_params)
        format.html { redirect_to @daw_pregunt, notice: 'Daw pregunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_pregunt }
      else
        format.html { render :edit }
        format.json { render json: @daw_pregunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_pregunts/1
  # DELETE /daw_pregunts/1.json
  def destroy
    @daw_pregunt.destroy
    respond_to do |format|
      format.html { redirect_to daw_pregunts_url, notice: 'Daw pregunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_pregunt
      @daw_pregunt = DawPregunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_pregunt_params
      params[:daw_pregunt]
    end
end
