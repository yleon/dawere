json.array!(@daw_tablas) do |daw_tabla|
  json.extract! daw_tabla, :id, :tab_nombre, :tab_nemonico, :tab_integer, :tab_char, :tab_varchar, :tab_float, :tab_boolean, :tab_fecha, :tab_activo
  json.url daw_tabla_url(daw_tabla, format: :json)
end
