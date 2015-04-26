json.array!(@obras) do |obra|
  json.extract! obra, :id, :inicio, :entrega
  json.url obra_url(obra, format: :json)
end
