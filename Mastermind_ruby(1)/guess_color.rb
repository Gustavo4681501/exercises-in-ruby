require 'pry-byebug'
class GuessColor
    
    def initialize(available_colours)
        @available_colours = available_colours
    end
    def guess
        case 1
        when 1
            @available_colours.sample(4)
        else
            " "
        end
    end
end