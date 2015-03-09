json.array!(@daw_curso_promocions) do |daw_curso_promocion|
  json.extract! daw_curso_promocion, :id, :daw_promocion_id
  json.url daw_curso_promocion_url(daw_curso_promocion, format: :json)
end
