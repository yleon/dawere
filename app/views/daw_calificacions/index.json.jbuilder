json.array!(@daw_calificacions) do |daw_calificacion|
  json.extract! daw_calificacion, :id, :calif_notaObtenida, :calif_presento, :calif_fecha
  json.url daw_calificacion_url(daw_calificacion, format: :json)
end
