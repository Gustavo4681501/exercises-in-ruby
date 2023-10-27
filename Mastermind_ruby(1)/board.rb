require 'pry-byebug'
class Board
    attr_accessor :index, :arreglo
    def initialize 
        @arreglo= Array.new(12) {Array.new(["O","O","O","O",["| O O O O"]])}
    end

    def display_board
        @arreglo.each{ |guess|  puts"| #{guess.join("   ") }|"}
    end
    
    def add_attemps (index, arreglo, arreglo_aciertos)
        @arreglo[index] = arreglo,"|",  arreglo_aciertos
    end

    def colorize_attemps(array)
        array.map!{|uncolorize_string|
            case uncolorize_string
            when "red"
                "red".colorize(:red)
            when "yellow"
                "yellow".colorize(:yellow)
            when "blue"
                "blue".colorize(:blue)
            when "green"
                "green".colorize(:green)
            else
                uncolorize_string="O"
            end
        }
    end
end










