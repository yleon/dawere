json.array!(@daw_curso_promos) do |daw_curso_promo|
  json.extract! daw_curso_promo, :id, :daw_promo_id
  json.url daw_curso_promo_url(daw_curso_promo, format: :json)
end
