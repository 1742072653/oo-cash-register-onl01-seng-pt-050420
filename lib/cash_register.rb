class CashRegister
attr_accessor:total,:discount, :items

   def initialize(discount = 0)
    	@total = 0
    	@discount = discount.to_f
    	@items = []
   end

   def add_item(item,price,quantity=1)
    	i = 0 
    	while (i < quantity)
      	@items << item 
      	i += 1
    	end
    	@last_transaction = (price * quantity).to_f
    	@total += (price*quantity).to_f
   end

   def apply_discount
    	if(@discount == 0)
    	  return "There is no discount to apply."
    	else
    	  @total -= (@total *  (@discount/ 100))
	      return "After the discount, the total comes to $#{@total.to_i}."
	    end
  end


   def void_last_transaction
    	@total = @total - @last_transaction
   end
end