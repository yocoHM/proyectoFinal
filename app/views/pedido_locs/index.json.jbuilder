json.array!(@pedido_locs) do |pedido_loc|
  json.extract! pedido_loc, :id, :obra_id, :pedido_id
  json.url pedido_loc_url(pedido_loc, format: :json)
end
