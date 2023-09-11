class Animal

    def initialize()
    end

    def initialize(name,age,weigth,movility)
        @name = name
        @age = age
        @weigth=weigth
        @movility=movility
    end
    
    
    attr_accessor :name,:age, :weigth, :movility

    def movement
        p "Hola soy una #{@name} y para moverme puedo #{@movility}"
    end

    def talk
        p "Soy una #{@name} y hago ruu ruu"
    end

    def report_data
        p "Me llamo #{@name} y tengo #{@age} de edad y peso #{@weigth} kilos"
    end

end