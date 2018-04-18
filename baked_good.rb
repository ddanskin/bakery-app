class Baked_Good
    attr_accessor :type, :flavor, :topping, :filling, :allergens, :description, :image

    def initialize(type, flavor, topping, filling, allergens, description, image)
        @type = type
        @flavor = flavor
        @topping = topping
        @filling = filling
        @allergens = allergens
        @description = description
        @image = image
    end

end
