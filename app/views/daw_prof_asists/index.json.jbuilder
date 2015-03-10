json.array!(@daw_prof_asists) do |daw_prof_asist|
  json.extract! daw_prof_asist, :id, :pa_profesion, :pa_tipo, :pa_fechaingr, :pa_biografia
  json.url daw_prof_asist_url(daw_prof_asist, format: :json)
end
