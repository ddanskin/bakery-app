require 'sinatra'
require 'sendgrid-ruby'

include SendGrid

get '/' do
    erb :index
end

get '/menu' do
    erb :menu
end

post '/' do

end
