json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :presentacion, :especificaciones, :color, :m2
  json.url producto_url(producto, format: :json)
end
