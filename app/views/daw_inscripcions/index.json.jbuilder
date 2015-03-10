json.array!(@daw_inscripcions) do |daw_inscripcion|
  json.extract! daw_inscripcion, :id, :insc_fechaini, :insc_fechafin, :insc_estado, :insc_tipo, :insc_estadoPago, :insc_estadoDoc
  json.url daw_inscripcion_url(daw_inscripcion, format: :json)
end
