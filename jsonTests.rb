require 'sinatra'
require 'json'

get '/empty.json' do
  content_type :json
  {}.to_json
end

get '/notEmpty.json' do
  content_type :json
  { :key => "value", :key2 => 'value' }.to_json
end
