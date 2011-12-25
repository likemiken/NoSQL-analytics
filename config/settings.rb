set :views, settings.root + 'app/views'

configure :production do
  Ohm.connect url: ENV["REDIS_TO_GO_URI"]
end

configure :development do

end
