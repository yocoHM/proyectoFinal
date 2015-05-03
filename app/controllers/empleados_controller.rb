class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  # GET /empleados
  # GET /empleados.json
  def index
    @empleados = Empleado.all
  end

  # GET /empleados/1
  # GET /empleados/1.json
  def show
    
  end

  def total
    @empleado = Empleado.select("empleados.nombre, sum(prod_locs.m2 * productos.precio) as Ventas").joins("JOIN obras on empleados.id = obras.empleado_id join localidads on localidads.obra_id = obras.id join prod_locs on prod_locs.localidad_id = localidads.id join productos on productos.id = prod_locs.producto_id").group("empleados.nombre").order("Ventas desc")
    
  end

  # GET /empleados/new
  def new
    @empleado = Empleado.new
  end

  # GET /empleados/1/edit
  def edit
  end

  # POST /empleados
  # POST /empleados.json
  def create
    @empleado = Empleado.new(empleado_params)

    respond_to do |format|
      if @empleado.save
        format.html { redirect_to @empleado, notice: 'El empleado fue creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @empleado }
      else
        format.html { render :new }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleados/1
  # PATCH/PUT /empleados/1.json
  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.html { redirect_to @empleado, notice: 'El empleado fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @empleado }
      else
        format.html { render :edit }
        format.json { render json: @empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleados/1
  # DELETE /empleados/1.json
  def destroy
    @empleado.destroy
    respond_to do |format|
      format.html { redirect_to "/empleados/", notice: 'El empleado fue eliminado satisfactoriamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleado
      @empleado = Empleado.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        logger.error "Se intento accesar a un empleado no valido"
        redirect_to empleados_url
        flash[:danger] = "Empleado no válido"
      rescue ActiveRecord::StatementInvalid
        logger.error "Se intento accesar a un empleado no valido"
        redirect_to empleados_url
        flash[:danger] = "Empleado no válido"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empleado_params
      params.require(:empleado).permit(:nombre, :rfc, :direccion, :telefono, :seguro_social, :email, :password)
    end
end
