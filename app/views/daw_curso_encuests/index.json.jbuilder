json.array!(@daw_curso_encuests) do |daw_curso_encuest|
  json.extract! daw_curso_encuest, :id, :curenc_periodo, :daw_encuest_id
  json.url daw_curso_encuest_url(daw_curso_encuest, format: :json)
end
