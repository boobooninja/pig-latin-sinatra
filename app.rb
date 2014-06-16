require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/' do
  erb :translate
end

get '/translate' do
  erb :translate
end

post '/translate' do
  phrase = params["post"]["phrase"]
  if (phrase)
    @translated = PigLatin.translate( phrase )
    # @translated = phrase
    erb :result
  else
    erb :translate
  end
end
