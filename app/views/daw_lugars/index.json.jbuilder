json.array!(@daw_lugars) do |daw_lugar|
  json.extract! daw_lugar, :id, :lugar_nombre, :lugar_tipo, :lugar_nivel, :daw_lugar_id
  json.url daw_lugar_url(daw_lugar, format: :json)
end
