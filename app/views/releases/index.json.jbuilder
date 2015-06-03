json.array!(@releases) do |release|
  json.extract! release, :id, :movie_id, :format, :released_on
  json.url release_url(release, format: :json)
end
