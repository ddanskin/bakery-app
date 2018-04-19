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

get '/' do
    @items = $bakery
    erb :index
end

get '/about' do
    erb :about
end

get '/menu' do
    @items = $bakery
    erb :index
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
    erb :contact
end

get '/admin' do
    @inventory = $bakery
    erb :admin
end

post '/' do

end
