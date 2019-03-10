class Guest

  attr_reader :name, :age, :money

    def initialize(name, age, money)
      @name = name
      @age = age
      @money = money
    end

    def guest_has_money
      return @money
    end
    
    def guest_pays_fee(room)
      @money -= room.fee
    end

end
