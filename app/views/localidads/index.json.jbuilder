json.array!(@localidads) do |localidad|
  json.extract! localidad, :id, :direccion
  json.url localidad_url(localidad, format: :json)
end
