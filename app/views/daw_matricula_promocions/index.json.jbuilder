json.array!(@daw_matricula_promocions) do |daw_matricula_promocion|
  json.extract! daw_matricula_promocion, :id, :daw_promocion_id
  json.url daw_matricula_promocion_url(daw_matricula_promocion, format: :json)
end
