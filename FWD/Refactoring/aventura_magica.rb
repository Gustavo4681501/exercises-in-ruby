#Ejemplo con composicion
class Player
  attr_reader :nombre

  def initialize(nombre)
    @nombre = nombre
  end
end

class Item
  def initialize(inventario)

    @inventario=inventario
  end
  
end

class Game
  def initialize(jugador)
    @jugador=jugador
    @item=[]
  end

  def mostrar_inventario
    puts "Inventario de #{@jugador.nombre}:"
    @item.each do |item|
      puts "- #{item}"
    end
  end
  def agregar_item(item)
    @item << item
  end

  def jugar
    puts "¡Bienvenido a la aventura, #{@jugador.nombre}!"
    puts "Encuentras una espada. ¿Quieres agregarla a tu inventario? (s/n)"
    respuesta = gets.chomp.downcase
    if respuesta == "s"
      agregar_item("espada")
    end
    puts "¡La aventura ha terminado, #{@jugador.nombre}!"
  end
end

# Crear un jugador
puts "Ingresa tu nombre:"
nombre_jugador = gets.chomp
jugador = Player.new(nombre_jugador)
item= Item.new("espada")
juego= Game.new(jugador)
juego.jugar
juego.mostrar_inventario

