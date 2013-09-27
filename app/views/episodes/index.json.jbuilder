json.array!(@episodes) do |episode|
  json.extract! episode, :title, :description, :video_id
  json.url episode_url(episode, format: :json)
end
