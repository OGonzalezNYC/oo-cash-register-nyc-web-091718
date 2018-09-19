class CashRegister
  attr_reader :discount
  attr_accessor :total #:cash_register_with_discount
  def initialize(discount=20)
    @total = 0 
    @discount = discount
  end 
  def total 
    @total 
  end 
  def add_item(title, price, quantity = 1)
    @total += price*quantity
  end 
  def apply_discount
    @total 
  end 
end 
