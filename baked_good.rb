class Baked_Good
    attr_accessor :type, :flavor, :topping, :filling, :allergens, :description, :image, :price
    def initialize(args)
        @type = args[:type]
        @flavor = args[:flavor]
        @topping = args[:topping]
        @filling = args[:filling]
        @allergens = args[:allergens]
        @description = args[:description]
        @image = args[:image]
        @price = args[:price]
    end

end

