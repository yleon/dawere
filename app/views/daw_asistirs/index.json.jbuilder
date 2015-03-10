json.array!(@daw_asistirs) do |daw_asistir|
  json.extract! daw_asistir, :id, :asist_fecha
  json.url daw_asistir_url(daw_asistir, format: :json)
end
