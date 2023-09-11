class  Perro

    def inventar_nombre
        @nombre= "Firulais"
    end
    
    def inventar_edad
        @edad=5
    end
    
    def hablar
        puts "#{@nombre} dice WOOF, WOOF!"
    end

    def moverse(destino) 
        puts "#{@nombre} corre a #{destino}"
    end

    def reportar_edad
        puts "#{@nombre} tiene #{@edad} años"
    end

end

perro = Perro.new
perro.inventar_nombre
perro.moverse('Jardín')
perro.inventar_edad
perro.reportar_edad