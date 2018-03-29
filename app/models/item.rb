class Item < ApplicationRecord
  belongs_to :list
  


  validates :price, numericality : true

  def calc_tax (item)
    @item = item
    tax = @item.price * .08
    newTotal = tax + @item.price
    return @newTotal
  end

  def itemSwitch(item)
    @item = item 
    if (@item.name != "Iphone")
      @item = Item{name:"Iphone X", price: 1100, description:"Not overpriced ..."} 
    else
    end
  end 




end
