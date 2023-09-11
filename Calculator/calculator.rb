class Calculator
    def add(number_one, number_two)
        number_one + number_two
    end

    def subtract(number_one, number_two)
        number_one - number_two
    end

    def multiply(number_one, number_two)
        number_one * number_one
    end
    def divide(number_one, number_two)
        raise "no se puede dividir por 0" if number_two == 0
        number_one / number_two.to_f
    end

end


