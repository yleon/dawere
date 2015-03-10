json.array!(@daw_matriculas) do |daw_matricula|
  json.extract! daw_matricula, :id
  json.url daw_matricula_url(daw_matricula, format: :json)
end
