class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item_amount = 0
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    self.last_item_amount = quantity.times{@items << title}
    self.total += price * quantity
  end
  
  def apply_discount
    if self.discount != 0
      self.total *= (1 - self.discount / 100.00)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @last_item_amount
  end
  
  
end