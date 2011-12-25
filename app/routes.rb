# require_relative 'routes/'

get "/" do
  haml :index
end

get "/css/:stylesheet.css" do
  content_type "text/css", charset: "UTF-8"
  stylepath = "css/" + params[:stylesheet]
  sass stylepath.to_sym
end
