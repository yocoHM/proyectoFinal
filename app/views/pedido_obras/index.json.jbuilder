json.array!(@pedido_obras) do |pedido_obra|
  json.extract! pedido_obra, :id
  json.url pedido_obra_url(pedido_obra, format: :json)
end
