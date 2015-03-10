json.array!(@daw_relacions) do |daw_relacion|
  json.extract! daw_relacion, :id, :rela_tiporepresentante, :daw_persona_id, :daw_persona_id
  json.url daw_relacion_url(daw_relacion, format: :json)
end
