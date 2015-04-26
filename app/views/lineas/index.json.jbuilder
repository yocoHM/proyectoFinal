json.array!(@lineas) do |linea|
  json.extract! linea, :id, :nombre
  json.url linea_url(linea, format: :json)
end
