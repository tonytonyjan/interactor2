[![Build Status](https://travis-ci.org/tonytonyjan/interactor2.svg?branch=master)](https://travis-ci.org/tonytonyjan/interactor2)

# Install

```
gem install interactor2
```

# API

Method               | Summary
---------------------|-----------------------
Interactor2.perform  | `::new` and then `#perform`, all arguments will be passed to `#initialize`.
Interactor2#fail!    | Fail the interactor.
Interactor2#perform  | Must be overridden in child class, and should not call it directly, use `::perform` instead.
Interactor2#error    | Returns the error message.
Interactor2#success? | Returns `true` if there is no error.

# Usage

```ruby
require 'interactor2'
class AddToCart < Interactor2
  attr_reader :line_item, :cart # should be any attribute you want to expose

  def initialize(product, cart)
    @cart = cart
    @line_item = cart.line_items.new(product: product)
  end

  # business logic here.
  def perform
    unless @line_item.save
      fail! 'oops'
    end
  end
end
```

```ruby
  add_to_cart = AddToCart.perform(@product)
  if add_to_cart.success?
    add_to_cart.item
    add_to_cart.cart
  else
    add_to_cart.error # => 'oops'
  end
```
