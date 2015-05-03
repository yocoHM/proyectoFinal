class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]
  before_action :require_user

  # GET /productos
  # GET /productos.json
  def index
    @productos = Producto.all
  end

  # GET /productos/1
  # GET /productos/1.json
  def show
  end

  # GET /productos/new
  def new
    @producto = Producto.new(linea_id: params[:linea_id])
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create
    @producto = Producto.new(producto_params)

    respond_to do |format|
      if @producto.save
        format.html { redirect_to @producto, notice: 'El producto fue creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to @producto, notice: 'El producto fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'El producto fue eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        logger.error "Se intento accesar a un producto no valido"
        redirect_to productos_url
        flash[:danger] = "Producto no válido"
      rescue ActiveRecord::StatementInvalid
        logger.error "Se intento accesar a un producto no valido"
        redirect_to productos_url
        flash[:danger] = "Producto no válido"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:nombre, :presentacion, :especificaciones, :color, :m2, :precio, :linea_id)
    end
end
