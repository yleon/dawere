json.array!(@daw_reclamos) do |daw_reclamo|
  json.extract! daw_reclamo, :id, :recl_descripcion, :recl_fecha, :recl_atendido, :recl_tiporeclamo, :daw_persona_id
  json.url daw_reclamo_url(daw_reclamo, format: :json)
end
