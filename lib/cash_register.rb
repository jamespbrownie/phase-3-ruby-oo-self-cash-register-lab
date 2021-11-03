
class CashRegister
    attr_acessor :total
    @@items = []

    def initialize(employee_discount = 0)
        @employee_discount = employee_discount
        @total = 0
        @previous_total = 0
    end

    def add_item(title, price, quantity = 1)
        @previous_total = @total
        @total = (price * quantity)
        item = {title: title, price: price, quantity: quantity}
        @@items << item
    end

    

end
