json.array!(@daw_evaluacions) do |daw_evaluacion|
  json.extract! daw_evaluacion, :id
  json.url daw_evaluacion_url(daw_evaluacion, format: :json)
end
