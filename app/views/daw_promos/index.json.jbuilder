json.array!(@daw_promos) do |daw_promo|
  json.extract! daw_promo, :id, :pro_nombre, :pro_porcentaje, :pro_fechaini, :pro_fechafin, :pro_tipopromocion, :pro_estado
  json.url daw_promo_url(daw_promo, format: :json)
end
