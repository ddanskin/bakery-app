require 'sinatra'
require 'sendgrid-ruby'

include SendGrid

get '/' do
    erb :index
end

post '/' do

end
