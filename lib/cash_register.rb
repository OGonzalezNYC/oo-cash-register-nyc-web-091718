class CashRegister
  attr_accessor :total #:cash_register_with_discount
  def initialize(cash_register_with_discount = 20)
    @total = 0 
 #   @cash_register_with_discount = cash_register_with_discount
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
