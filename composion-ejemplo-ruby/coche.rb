class Car

    def initialize(marca, modelo, color,velocidad,motor, tipo_rueda)
        @marca=marca
        @modelo=modelo
        @color=color
        @velocidad=velocidad
        @motor=motor
        @tipo_rueda=tipo_rueda
    end
    

    def revisarMotor(motor)
        @motor=motor
    end

    def revisarRuedas(tipo_rueda)
        @tipo_rueda=tipo_rueda
    end

    def velocidad
        @motor.motorEstado
        @tipo_rueda.ruedasEstado
        p "El carro de la marca #{@marca} del modelo #{@modelo} de color #{@color} esta viajando a una velocidad de #{@velocidad} K/h"

    end

end

class Motor
    def initialize(tipo)
        @tipo=tipo
    end

    def motorEstado
        p "El motor #{@tipo} está revolucionando"
    end
    
end

class Ruedas
    def initialize(tipo)
        @tipo = tipo
    end

    def ruedasEstado
        p "Las ruedas de tipo #{@tipo} se encuentran girando a gran velocidad"
    end
    
end

motor= Motor.new("Motor Wankel")
ruedas = Ruedas.new("ruedas motrices")
carro = Car.new("Toyota supra", "mk5", "naranja","150", motor,ruedas)
carro.velocidad
