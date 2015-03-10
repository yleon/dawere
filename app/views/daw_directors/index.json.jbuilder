json.array!(@daw_directors) do |daw_director|
  json.extract! daw_director, :id, :dire_fechaingr
  json.url daw_director_url(daw_director, format: :json)
end
