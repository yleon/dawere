json.array!(@daw_asignaturas) do |daw_asignatura|
  json.extract! daw_asignatura, :id
  json.url daw_asignatura_url(daw_asignatura, format: :json)
end
