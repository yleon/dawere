json.array!(@daw_trabajos) do |daw_trabajo|
  json.extract! daw_trabajo, :id, :trab_nombre, :trab_tipo, :trab_telefono, :trab_direccion, :trab_fecha, :trab_estado, :daw_persona_id
  json.url daw_trabajo_url(daw_trabajo, format: :json)
end
