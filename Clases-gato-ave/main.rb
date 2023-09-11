require_relative "Animal"
require_relative "Dog"
require_relative "Cat"
require_relative "Bird"

gato = Cat.new("Paputis", 3, 8, "caminar")
perro = Dog.new("Zeus", 3, 10, "caminar")
pajaro = Bird.new("carlos", 3, 10, "volar")
gato.talk
perro.talk
pajaro.talk