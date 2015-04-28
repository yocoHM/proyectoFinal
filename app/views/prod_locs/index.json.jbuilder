json.array!(@prod_locs) do |prod_loc|
  json.extract! prod_loc, :id, :m2
  json.url prod_loc_url(prod_loc, format: :json)
end
