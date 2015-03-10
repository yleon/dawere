json.array!(@daw_representantes) do |daw_representante|
  json.extract! daw_representante, :id, :repr_profesion, :repr_sostenfamiliar
  json.url daw_representante_url(daw_representante, format: :json)
end
