require 'sinatra'
require 'json'
require 'sendgrid-ruby'

require_relative 'bakery'
require_relative 'items'


include SendGrid

#sample bakery items
$bakery = Bakery.new()
$bakery.cakes[@new_cake_one.flavor.to_sym] = @new_cake_one
$bakery.cakes[@new_cake_two.flavor.to_sym] = @new_cake_two
$bakery.cakes[@new_cake_three.flavor.to_sym] = @new_cake_three
$bakery.cookies[@new_cookie_one.flavor.to_sym] = @new_cookie_one
$bakery.cookies[@new_cookie_two.flavor.to_sym] = @new_cookie_two
$bakery.cookies[@new_cookie_three.flavor.to_sym] = @new_cookie_three
$bakery.muffins[@new_muffin_one.flavor.to_sym] = @new_muffin_one
$bakery.muffins[@new_muffin_two.flavor.to_sym] = @new_muffin_two
$bakery.muffins[@new_muffin_three.flavor.to_sym] = @new_muffin_three
email = false

get '/' do
    if email
        @mailer = :email_confirm
    else
        @mailer = :email_form
    end
    erb :index
end

get '/about' do
    erb :about
end

get '/cakes' do
    @item_list = $bakery.cakes
    erb :menu
end

get '/cookies' do
    @item_list = $bakery.cookies
    erb :menu
end

get '/muffins' do
    @item_list = $bakery.muffins
    erb :menu
end

get '/visit' do
    gmap = ENV['GMAP_API']
    @go = "https://www.google.com/maps/embed/v1/place?q=place_id:ChIJI9Gs4RdawokR-YQ1cKIeLHs&key=#{gmap}"
    erb :contact
end

get '/admin' do
    @inventory = $bakery
    erb :admin
end

post '/index' do
    @inventory = $bakery
    email = params[:email]
    text = (erb :admin)
    from = Email.new(email: 'danielle.danskin@gmail.com')
    to = Email.new(email: email)
    subject = 'Friendly Bakery Catalog'
    content = Content.new(type: 'text/html', value: text)
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.headers
    email = true
    redirect '/'

end
