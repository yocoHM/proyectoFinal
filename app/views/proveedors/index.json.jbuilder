json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :nombre, :correo, :direccion, :pais, :web
  json.url proveedor_url(proveedor, format: :json)
end
