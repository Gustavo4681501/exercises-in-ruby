require_relative "Board"
require_relative "guess_color"
class Game
    $available_colours = ["red","green", "blue", "yellow"]
    def initialize
        @board=Board.new()
        @guesser = GuessColor.new($available_colours)
    end

    def play
        p "escribe la combinacion"
        combinacion_secreta = @guesser.guess 
        @board.colorize_attemps(combinacion_secreta)

        puts combinacion_secreta.join(" ")
        intentos_maximos = 12
        intentos = 0
        while intentos <= intentos_maximos 
            @board.display_board()
            print "Intento ##{intentos + 1}: Ingresa combinacion: "
            combinacion = gets.chomp.downcase.split
            @board.colorize_attemps(combinacion)
            
            if combinacion == combinacion_secreta
                p "GANASTE!!! combinacion correcta en #{intentos+1} intentos."
                break

            else
                result = []
                $available_colours.each_with_index do | colors, index |
                    if (combinacion[index] == combinacion_secreta[index])
                        result.push("O".colorize(:green))
                        
                    else
                        result.push("O".colorize(:red))
                    end
                end
                @board.add_attemps(intentos, combinacion, result.sort{ |a, b| b <=> a } )
            end

            intentos += 1

        end
        
        puts "La commbinacion correcta es:"
        puts combinacion_secreta.join(" ")
    end
end