class Bakery
    attr_reader :cakes, :cookies, :muffins

    def initialize(cakes={}, cookies={}, muffins={})
        @cakes = cakes
        @cookies = cookies
        @muffins = muffins
    end

    def add_item(item, type, flavor, topping, filling, allergens, description, image)
        if item == "cake"
            new_cake = Cake.new(type, flavor, topping, filling, allergens, description, image)
            @cakes[:item.to_sym] = new_cake
        elsif item == "cookie"
            new_cookie = Cookie.new(type, flavor, topping, filling, allergens, description, image)
            @cookies[:item.to_sym] = new_cookie
        elsif item == "muffin"
            new_muffin = Muffin.new(type, flavor, topping, filling, allergens, description, image)
            @muffins[:item.to_sym] = new_muffin
        else
            puts "We don't sell that item, you can add: cake, cookie or muffin"
        end
    end

end
