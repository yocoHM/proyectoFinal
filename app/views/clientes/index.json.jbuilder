json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :rfc, :direccion, :telefono, :contacto
  json.url cliente_url(cliente, format: :json)
end
