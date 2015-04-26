json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :rfc, :direccion, :telefono, :seguro_social
  json.url empleado_url(empleado, format: :json)
end
