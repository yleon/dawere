json.array!(@daw_matricula_promos) do |daw_matricula_promo|
  json.extract! daw_matricula_promo, :id, :daw_promo_id
  json.url daw_matricula_promo_url(daw_matricula_promo, format: :json)
end
