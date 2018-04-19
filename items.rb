require_relative 'cake'
require_relative 'cookie'
require_relative 'muffin'


@cake_args_one = {
    type: 'round cake',
    flavor: 'chocolate',
    topping: 'chocolate icing',
    filling: 'none',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat'],
    description: 'Chocolate cake topped with chocolate icing',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 15.00
}

@new_cake_one = Cake.new(@cake_args_one)

@cake_args_two = {
    type: 'layer cake',
    flavor: 'carrot',
    topping: 'cream cheese frosting',
    filling: 'cream cheese frosting',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat', 'nuts'],
    description: 'Carrot cake with walnuts and cream cheese frosting.',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 15.00
}

@new_cake_two = Cake.new(@cake_args_two)

@cake_args_three = {
    type: 'sheet cake',
    flavor: 'vanilla',
    topping: 'whipped cream and fresh strawberries',
    filling: 'none',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat', 'strawberries'],
    description: 'Vanilla cake with whipped cream topping and fresh strawberries.',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 15.00
}

@new_cake_three = Cake.new(@cake_args_three)

@cookie_args_one = {
    type: 'drop cookie',
    flavor: 'chocolate chip walnut',
    topping: 'none',
    filling: 'none',
    allergens: ['nuts', 'eggs', 'dairy', 'gluten', 'wheat'],
    description: 'Chocolate chip cookie with chopped walnuts',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 1.50
}

@new_cookie_one = Cookie.new(@cookie_args_one)

@cookie_args_two = {
    type: 'drop cookie',
    flavor: 'oatmeal raisin',
    topping: 'none',
    filling: 'none',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat'],
    description: 'Oatmeal cookie with raisins.',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 1.50
}

@new_cookie_two = Cookie.new(@cookie_args_two)

@cookie_args_three = {
    type: 'drop cookie',
    flavor: 'peanut butter',
    topping: 'none',
    filling: 'none',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat', 'nuts'],
    description: 'Classic peanut butter cookie.',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 1.50
}

@new_cookie_three = Cookie.new(@cookie_args_three)

@muffin_args_one = {
    type: 'mini muffin',
    flavor: 'chocolate',
    topping: 'none',
    filling: 'none',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat'],
    description: 'Chocolate muffin',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 2.00
}

@new_muffin_one = Muffin.new(@muffin_args_one)

@muffin_args_two = {
    type: 'mini muffin',
    flavor: 'blueberry',
    topping: 'cinnamon crumble',
    filling: 'none',
    allergens: ['eggs', 'dairy', 'gluten', 'wheat'],
    description: 'Blueberry muffin with cinnamon crumble topping',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 2.00
}

@new_muffin_two = Muffin.new(@muffin_args_two)

@muffin_args_three = {
    type: 'mini muffin',
    flavor: 'cranberry almond',
    topping: 'none',
    filling: 'none',
    allergens: ['nuts','eggs', 'dairy', 'gluten', 'wheat'],
    description: 'Cranberry almond muffin',
    image: 'https://thumb7.shutterstock.com/display_pic_with_logo/59783/123954901/stock-photo-close-up-of-some-decadent-gourmet-cupcakes-frosted-with-a-variety-of-frosting-flavors-123954901.jpg',
    price: 2.00
}

@new_muffin_three = Muffin.new(@muffin_args_three)
