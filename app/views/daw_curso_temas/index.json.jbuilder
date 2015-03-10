json.array!(@daw_curso_temas) do |daw_curso_tema|
  json.extract! daw_curso_tema, :id
  json.url daw_curso_tema_url(daw_curso_tema, format: :json)
end
