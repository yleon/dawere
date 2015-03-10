json.array!(@daw_cursos) do |daw_curso|
  json.extract! daw_curso, :id
  json.url daw_curso_url(daw_curso, format: :json)
end
