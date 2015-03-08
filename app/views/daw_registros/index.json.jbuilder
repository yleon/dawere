json.array!(@daw_registros) do |daw_registro|
  json.extract! daw_registro, :id, :reg_idregtab, :reg_descripcion, :reg_char, :reg_varchar, :reg_float, :reg_boolean, :reg_fecha, :reg_activo, :daw_tabla_id
  json.url daw_registro_url(daw_registro, format: :json)
end
