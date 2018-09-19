class CashRegister
  attr_reader :discount
  attr_accessor :total
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction = 0
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @total += price*quantity
    counter = 1 
    while counter <= quantity
      @items << title
      counter += 1
    end 
    @last_transaction = price
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
    @total = @total - @last_transaction
  end 
end 
