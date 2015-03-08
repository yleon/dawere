class DawLogerrorsController < ApplicationController
  before_action :set_daw_logerror, only: [:show, :edit, :update, :destroy]

  # GET /daw_logerrors
  # GET /daw_logerrors.json
  def index
    @daw_logerrors = DawLogerror.all
  end

  # GET /daw_logerrors/1
  # GET /daw_logerrors/1.json
  def show
  end

  # GET /daw_logerrors/new
  def new
    @daw_logerror = DawLogerror.new
  end

  # GET /daw_logerrors/1/edit
  def edit
  end

  # POST /daw_logerrors
  # POST /daw_logerrors.json
  def create
    @daw_logerror = DawLogerror.new(daw_logerror_params)

    respond_to do |format|
      if @daw_logerror.save
        format.html { redirect_to @daw_logerror, notice: 'Daw logerror was successfully created.' }
        format.json { render :show, status: :created, location: @daw_logerror }
      else
        format.html { render :new }
        format.json { render json: @daw_logerror.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_logerrors/1
  # PATCH/PUT /daw_logerrors/1.json
  def update
    respond_to do |format|
      if @daw_logerror.update(daw_logerror_params)
        format.html { redirect_to @daw_logerror, notice: 'Daw logerror was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_logerror }
      else
        format.html { render :edit }
        format.json { render json: @daw_logerror.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_logerrors/1
  # DELETE /daw_logerrors/1.json
  def destroy
    @daw_logerror.destroy
    respond_to do |format|
      format.html { redirect_to daw_logerrors_url, notice: 'Daw logerror was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_logerror
      @daw_logerror = DawLogerror.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_logerror_params
      params.require(:daw_logerror).permit(:loge_sesion, :loge_descripcion, :loge_fecha, :loge_estado, :loge_error, :loge_errorbd, :loge_argumento1, :loge_argumento2)
    end
end
