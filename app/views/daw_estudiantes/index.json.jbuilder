json.array!(@daw_estudiantes) do |daw_estudiante|
  json.extract! daw_estudiante, :id, :estu_nacionalidad, :estu_biografia
  json.url daw_estudiante_url(daw_estudiante, format: :json)
end
