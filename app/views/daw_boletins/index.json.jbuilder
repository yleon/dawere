json.array!(@daw_boletins) do |daw_boletin|
  json.extract! daw_boletin, :id, :bltin_nota, :bltin_progresoAsist, :bltin_progresoEval, :bltin_porcentaje, :bltin_fechafin
  json.url daw_boletin_url(daw_boletin, format: :json)
end
