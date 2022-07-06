require "pry"
class CashRegister
    attr_reader :discount
    attr_accessor :total, :items, :last_price

    def initialize employee_discount=0
        @total = 0
        @discount = employee_discount
        @items = []
        @last_price = 0
    end

    def add_item title, price, quantity=1
        quantity.times do 
        self.items << title
        # shovel in items 
        end
        self.last_price = price.to_f * quantity

        self.total += price * quantity
         # self.total = self.total + price
        # These operate similarly by setting the writer method and then the reader
    end

    def apply_discount
        if self.discount > 0
             self.total = self.total - (self.discount.to_f / 100) * self.total
             "After the discount, the total comes to $#{self.total.to_i}."
        else
             "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_price
    end
    

end
