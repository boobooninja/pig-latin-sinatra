require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/' do
  erb :translate
end

get '/translate' do
  @title = "Translate Form"
  erb :translate
end

post '/translate' do
  phrase = params["post"]["phrase"]
  if (phrase)
    @translated = PigLatin.translate( phrase )
    @title = "Translate Response"
    erb :result
  else
    @title = "Translate Form"
    erb :translate
  end
end
