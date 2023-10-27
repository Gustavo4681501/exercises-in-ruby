require "colorize"
require 'pry-byebug'
require_relative "Game"
p "*****************************************************"
p "*¡Bienvenido a Mastermind la Combinación de Colores!*"
p "*****************************************************"
opcion=0
game = Game.new
while (opcion <= 2)
    p "Que desea hacer"
    p "1. Guess combination"
    p "2. Do combination"
    p "3. Exit"
    opcion= gets.chomp.to_i
    case opcion
    when 1
        game.play
    when 2
        p "Aqui jugaria la maquina"
    when 3 
        p "thanks for playing"
    else
        p "else"
    end
end