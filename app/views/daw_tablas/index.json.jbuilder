json.array!(@daw_tablas) do |daw_tabla|
  json.extract! daw_tabla, :id, :tab_nombre, :tab_nemonico
  json.url daw_tabla_url(daw_tabla, format: :json)
end
