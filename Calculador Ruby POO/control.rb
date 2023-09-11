require_relative 'calculator'
def run_game
    puts 'Bienvenido a la cualculadora en ruby'
    puts 'Ingresa el primer numero: '
    num1 = gets.to_f

    puts 'Ingresa el segundo numero: '
    num2 = gets.to_f

    puts 'Selecciona una operacion:'
    puts '1.Suma'
    puts '2.Resta'
    puts '3.Multiplicacion'
    puts '4.Division'

    choice = gets.to_i

    case choice
    when 1
        results = Calculator.add(num1, num2);
        operator= '+'
    when 2
        results = Calculator.substract(num1, num2);
        operator= '-'
    when 3
        results = Calculator.multiply(num1, num2);
        operator= '*'
    when 4
        begin
            results = Calculator.divide(num1, num2);
            operator= '/'
        rescue StandardError => e
            puts "Error #{e.message}"
            return
        end
    else
        puts "invalid value"
    end

    puts "El resultado de #{num1} #{operator} #{num2} = #{results}"
end

run_game