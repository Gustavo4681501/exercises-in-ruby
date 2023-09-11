# Crea una clase Casa que contenga una composición de 
# objetos Habitación. Cada habitación debe tener una descripción.
class Casa
    
    attr_accessor :habitaciones

    def initialize (habitaciones ={})
        @habitaciones= habitaciones
        @tipo = tipo
    end
    
    def plano
        p "Esta casa es tipo #{@tipo} y tiene #{@habitaciones}"
    end
    
end