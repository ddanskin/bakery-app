require_relative 'cake'
require_relative 'cookie'
require_relative 'muffin'

class Bakery
    attr_accessor :cakes, :cookies, :muffins

    def initialize(cakes={}, cookies={}, muffins={}, featured={})
        @cakes = cakes
        @cookies = cookies
        @muffins = muffins
        @featured = featured
    end

    def add_item(item_type, item)
        if item_type == "cake"
            @cakes[item[:flavor]] = item
        elsif item_type == "cookie"
            @cookies[item[:flavor]] = item
        elsif item_type == "muffin"
            @muffins[item[:flavor]] = item
        else
            puts "We don't sell that item, you can add: cake, cookie or muffin"
        end
    end
end
