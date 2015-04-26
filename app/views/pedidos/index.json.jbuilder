json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :m2, :orden, :recibido
  json.url pedido_url(pedido, format: :json)
end
