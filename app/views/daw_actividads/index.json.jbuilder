json.array!(@daw_actividads) do |daw_actividad|
  json.extract! daw_actividad, :id
  json.url daw_actividad_url(daw_actividad, format: :json)
end
