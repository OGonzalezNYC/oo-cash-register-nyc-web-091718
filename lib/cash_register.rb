class CashRegister
  attr_reader :discount
  attr_accessor :total
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  def total 
    @total 
  end 
  def add_item(title, price, quantity = 1)
    
    @total += price*quantity
    @items << title
  end 
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
      @total = @total*(100-@discount)*0.01
      "After the discount, the total comes to $#{(@total).to_i}."
    end 
  end 
  
  def items
    @items
  end 
  def void_last_transaction
    
  end 
end 
