json.array!(@daw_tema_mate_acads) do |daw_tema_mate_acad|
  json.extract! daw_tema_mate_acad, :id
  json.url daw_tema_mate_acad_url(daw_tema_mate_acad, format: :json)
end
