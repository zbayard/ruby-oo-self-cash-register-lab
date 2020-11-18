class CashRegister
    
    attr_accessor :discount, :total
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @price = price
        @quantity = quantity
        quantity.times do @items << title
         end
        self.total += price * quantity
    end

    def apply_discount
        if @discount != 0
        self.total = (@total * ((100.0 - @discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= (@price * @quantity)
    end


    











    

end

