class ObrasController < ApplicationController
  before_action :set_obra, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  # GET /obras
  # GET /obras.json
  def index
    @obras = Obra.all
  end

  # GET /obras/1
  # GET /obras/1.json
  def show
 
  end

  def cotiza
    @obra = Obra.find(params[:id])
    @total = 0
    @producto = Obra.select("productos.nombre, localidads.direccion, prod_locs.m2, productos.precio").joins("JOIN localidads ON localidads.obra_id = obras.id JOIN prod_locs ON localidads.id = prod_locs.localidad_id JOIN productos ON prod_locs.producto_id = productos.id")
  end

  # GET /obras/new
  def new
    @obra = Obra.new(cliente_id: params[:cliente_id])
  end

  # GET /obras/1/edit
  def edit
  end

  # POST /obras
  # POST /obras.json
  def create
    @obra = Obra.new(obra_params)
    @obra.empleado_id = session[:empleado_id]

    respond_to do |format|
      if @obra.save
        format.html { redirect_to @obra, notice: 'Obra was successfully created.' }
        format.json { render :show, status: :created, location: @obra }
      else
        format.html { render :new }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obras/1
  # PATCH/PUT /obras/1.json
  def update
    respond_to do |format|
      if @obra.update(obra_params)
        format.html { redirect_to @obra, notice: 'Obra was successfully updated.' }
        format.json { render :show, status: :ok, location: @obra }
      else
        format.html { render :edit }
        format.json { render json: @obra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obras/1
  # DELETE /obras/1.json
  def destroy
    @obra.destroy
    respond_to do |format|
      format.html { redirect_to obras_url, notice: 'Obra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obra
      @obra = Obra.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        logger.error "Se intento accesar a una obra no valida"
        redirect_to obras_url
        flash[:danger] = "Obra no válida"
      rescue ActiveRecord::StatementInvalid
        logger.error "Se intento accesar a una obra no valida"
        redirect_to obras_url
        flash[:danger] = "Obra no válida"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obra_params
      params.require(:obra).permit(:inicio, :entrega, :cliente_id)
    end
end
