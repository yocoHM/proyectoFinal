class LocalidadsController < ApplicationController
  before_action :set_localidad, only: [:show, :edit, :update, :destroy]
  #before_action :require_user

  # GET /localidads
  # GET /localidads.json
  def index
    @localidads = Localidad.all
  end

  # GET /localidads/1
  # GET /localidads/1.json
  def show
  end

  # GET /localidads/new
  def new
    @localidad = Localidad.new(obra_id: params[:obra_id])
  end

  # GET /localidads/1/edit
  def edit
  end

  # POST /localidads
  # POST /localidads.json
  def create
    @localidad = Localidad.new(localidad_params)

    respond_to do |format|
      if @localidad.save
        format.html { redirect_to @localidad, notice: 'La localidad fue creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @localidad }
      else
        format.html { render :new }
        format.json { render json: @localidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localidads/1
  # PATCH/PUT /localidads/1.json
  def update
    respond_to do |format|
      if @localidad.update(localidad_params)
        format.html { redirect_to @localidad, notice: 'La localidad fue actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @localidad }
      else
        format.html { render :edit }
        format.json { render json: @localidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localidads/1
  # DELETE /localidads/1.json
  def destroy
    @localidad.destroy
    respond_to do |format|
      format.html { redirect_to localidads_url, notice: 'La localidad fue eliminada satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localidad
      @localidad = Localidad.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        logger.error "Se intento accesar a una localidad no valida"
        redirect_to empleados_url
        flash[:danger] = "Localidad no válida"
      rescue ActiveRecord::StatementInvalid
        logger.error "Se intento accesar a una localidad no valida"
        redirect_to empleados_url
        flash[:danger] = "Localidad no válida"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def localidad_params
      params.require(:localidad).permit(:direccion, :obra_id)
    end
end
