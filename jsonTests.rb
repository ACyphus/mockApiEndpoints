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

get '/nested.json' do
  content_type :json
  {
    :organisation => {
      'name' => 'Big Bad Wolf',
      'people' => {
        0 => {
          'name' => 'Alex Cyphus'
        },
        1 => {
          'name' => 'Joe Bloggs'
        }
      },
      'pets' => {}
    }
  }.to_json
end
