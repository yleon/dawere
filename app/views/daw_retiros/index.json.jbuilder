json.array!(@daw_retiros) do |daw_retiro|
  json.extract! daw_retiro, :id, :ret_fecha, :ret_motivo, :daw_persona_id
  json.url daw_retiro_url(daw_retiro, format: :json)
end
