json.array!(@daw_periodo_acads) do |daw_periodo_acad|
  json.extract! daw_periodo_acad, :id
  json.url daw_periodo_acad_url(daw_periodo_acad, format: :json)
end
