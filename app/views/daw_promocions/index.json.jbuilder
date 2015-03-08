json.array!(@daw_promocions) do |daw_promocion|
  json.extract! daw_promocion, :id, :pro_nombre, :pro_porcentaje, :pro_fechainicio, :pro_fechafin, :pro_tipopromocion, :pro_estado
  json.url daw_promocion_url(daw_promocion, format: :json)
end
