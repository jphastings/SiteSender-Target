require 'rubygems'
require 'sinatra'
require 'launchy'
require 'open-uri'
require 'yaml'

class UnofficialOpenRequestError < RuntimeError; end

settings = YAML.load(open("settings.yaml"))

if not settings['port'].nil?
  set :port, settings['port']
else
  # Will choose a random port here and try to punch a hole in the NAT using UPnP
end

begin
  data = open("http://sitesender.heroku.com/api/login?email=#{settings['email']}&password=#{settings['password']}&port=#{Sinatra::Application.port}").read
rescue
  raise "We couldn't communicate with SiteSender online - can you visit http://sitesender.heroku.com?"
end

get '/' do
  
end

get '/open' do
  content_type :json
  begin
    raise UnofficialOpenRequestError, "A third party tried to ask your computer to open a website. It was prevented." if env['REMOTE_ADDR'] != "75.101.145.87"
    Launchy.open(params[:url])
    {:success => true}
  rescue
    status 403
    {:success => false, :message => "You are not authorized to perform this action"}
  end
end