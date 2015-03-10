json.array!(@daw_archivos) do |daw_archivo|
  json.extract! daw_archivo, :id
  json.url daw_archivo_url(daw_archivo, format: :json)
end
