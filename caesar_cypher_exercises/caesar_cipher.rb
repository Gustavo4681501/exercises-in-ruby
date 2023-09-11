#Rango de valores para la tabla del codigo ascii

MAX_VALUE_ASCII_MINUS=122

MIN_VALUE_ASCII_MINUS=96

MAX_VALUE_ASCII_MAYUS=90

MIN_VALUE_ASCII_MAYUS=64

#Algoritmo caesar_cipher 
def caesar_cipher(string, dezplazamiento)
    if string.nil? || string.empty?
        return ""
    end

    for i in 0...string.length do
        if ("a".."z")===string[i] || ("A".."Z")===string[i]
            string_code=string[i].ord
            string_code+=dezplazamiento
            
            if string_code >= MAX_VALUE_ASCII_MINUS && ("a".."z")===string[i]
                aux = string_code - MAX_VALUE_ASCII_MINUS
                string_code= aux + MIN_VALUE_ASCII_MINUS

            elsif string_code > MAX_VALUE_ASCII_MAYUS && ("A".."Z")===string[i]
                aux = string_code - MAX_VALUE_ASCII_MAYUS
                string_code= MIN_VALUE_ASCII_MAYUS + aux
            end

            string[i]=string_code.chr
        end
    end
    
string
end


p caesar_cipher("What a string!", 5)
