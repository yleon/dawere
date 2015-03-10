json.array!(@daw_mate_acads) do |daw_mate_acad|
  json.extract! daw_mate_acad, :id
  json.url daw_mate_acad_url(daw_mate_acad, format: :json)
end
