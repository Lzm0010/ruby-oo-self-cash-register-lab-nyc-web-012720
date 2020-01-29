class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total *= (1 - self.discount / 100.00)
    "After the discount, the total comes to $#{self.total}"
  end
  
  def items
    
  end
  
  def void_last_transaction
    
  end
  
  
end