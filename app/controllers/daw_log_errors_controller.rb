class DawLogErrorsController < ApplicationController
  before_action :set_daw_log_error, only: [:show, :edit, :update, :destroy]

  # GET /daw_log_errors
  # GET /daw_log_errors.json
  def index
    @daw_log_errors = DawLogError.all
  end

  # GET /daw_log_errors/1
  # GET /daw_log_errors/1.json
  def show
  end

  # GET /daw_log_errors/new
  def new
    @daw_log_error = DawLogError.new
  end

  # GET /daw_log_errors/1/edit
  def edit
  end

  # POST /daw_log_errors
  # POST /daw_log_errors.json
  def create
    @daw_log_error = DawLogError.new(daw_log_error_params)

    respond_to do |format|
      if @daw_log_error.save
        format.html { redirect_to @daw_log_error, notice: 'Daw log error was successfully created.' }
        format.json { render :show, status: :created, location: @daw_log_error }
      else
        format.html { render :new }
        format.json { render json: @daw_log_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daw_log_errors/1
  # PATCH/PUT /daw_log_errors/1.json
  def update
    respond_to do |format|
      if @daw_log_error.update(daw_log_error_params)
        format.html { redirect_to @daw_log_error, notice: 'Daw log error was successfully updated.' }
        format.json { render :show, status: :ok, location: @daw_log_error }
      else
        format.html { render :edit }
        format.json { render json: @daw_log_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daw_log_errors/1
  # DELETE /daw_log_errors/1.json
  def destroy
    @daw_log_error.destroy
    respond_to do |format|
      format.html { redirect_to daw_log_errors_url, notice: 'Daw log error was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daw_log_error
      @daw_log_error = DawLogError.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daw_log_error_params
      params.require(:daw_log_error).permit(:loge_sesion, :loge_descripcion, :loge_fecha, :loge_estado, :loge_error, :loge_errorbd, :loge_argumento1, :loge_argumento2)
    end
end
