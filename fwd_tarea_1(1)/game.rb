def game
    puts "Bienvenido al juego, por favor ingresa tu nombre:"
    name = gets.chomp
    puts "Hola #{name}, ¡preparate para jugar!"
    
    # TODO: Aquí va el resto de tu código
  

    ramdon_number = rand(1..100)

    puts ramdon_number
  for i in (10).downto(0) 
    if(i==0)
      puts "Lo siento. No acertaste mi número. Mi número era #{ramdon_number}"
      return
    end
    
    number=0

    while number==0
      if number==0
        puts "VALOR INVALIDO FAVOR INGRESAR UN NUMERO ENTRE EL 1 Y EL 100"
        puts "Te quedan #{i} suposiciones"
        puts "Digita un numero entre el 1 y el 100"
        number = gets.chomp.to_i
      end
    end
    
      if (number == ramdon_number)
        puts "Buen trabajo, #{name}! ¡Adivinaste mi número en #{i} suposiciones!"
        return
  
      elsif (number < ramdon_number)
        puts "Vaya. Tu suposición fue BAJA"
  
      elsif (number > ramdon_number)
        puts "Vaya. Tu suposición fue ALTA"
      end
    end

  end




game