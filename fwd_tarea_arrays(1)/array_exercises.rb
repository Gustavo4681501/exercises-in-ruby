def nil_array(number)
    # return an array containing `nil` the given number of times
    array =[]
    number.times do
    array.push(nil)
    end
    p array
  end


  
  def first_element(array)
    # return the first element of the array
    array[0]
  end
  
  def third_element(array)
    # return the third element of the array
    array[2]
  end
  
  def last_three_elements(array)
    # return the last 3 elements of the array
    p array.pop(3)
end

  def add_element(array)
    # add an element (of any value) to the array
    p "ingresa un valor cualquiera"
    value = gets.chomp
    array.push(value)
    array
  end
  
  def remove_last_element(array)
    # Step 1: remove the last element from the array
    deleted_value=array.pop
    p "Ultimo elemento removido"
    p array
    # Step 2: return the array (because Step 1 returns the value of the element removed)
    p "Ultimo elemento re-insertado"
    array.push(deleted_value)
    p array
  end
  
  def remove_first_three_elements(array)
    # Step 1: remove the first three elements
    p "Primeros 3 elementos removidos"
    deleted_value=array.shift(3)
    p array
    # Step 2: return the array (because Step 1 returns the values of the elements removed)
    p "Primero 3 elementos re-insertados"
    array.unshift(deleted_value);
  end
  
  def array_concatenation(original, additional)
    # return an array adding the original and additional array together
    original + additional
  end
  
  def array_difference(original, comparison)
    # return an array of elements from the original array that are not in the comparison array
    original - comparison
  end
  
  def empty_array?(array,empty)
    # return true if the array is empty
    p "Array con elementos"
    p array.empty?

    p "Arreglo con elemento"
    p empty.empty?
  end
  
  def reverse(array)
    # return the reverse of the array
    array.reverse
  end
  
  def array_length(array)
    # return the length of the array
    array.length
  end
  
  def include?(array, value)
    # return true if the array includes the value
    array.include?(value)
  end
  
  def join(array, separator)
    # return the result of joining the array with the separator
    array.join(separator)
  end

p "-------------------------------------------------------------------------------------------------------"
p "Arreglo con valores nulos"
nil_array(5)
p "-------------------------------------------------------------------------------------------------------"

p "Imprimir el primer elemento de un arreglo"
p first_element([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Imprimir el tercer elemento de un arreglo"
p third_element([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Imprimir los ultimos tres elementos de un arreglo"
last_three_elements([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Añadir un elemento cualquieraa un arreglo"
p add_element([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Remover el ultimo elemento de un arreglo"
remove_last_element([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Remover los primero 3 elementos de un arreglo"
p remove_first_three_elements([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Retornar la concatenacion de dos arreglos"
p array_concatenation([1,1,22,1,4,5], [1,2,1,1,5,10])
p "-------------------------------------------------------------------------------------------------------"

p "Retornar la diferencia de dos arreglos"
p array_difference([1,1,22,1,4,5], [1,2,1,1,5,10])
p "-------------------------------------------------------------------------------------------------------"

p "Retornar si un arreglo esta vacio"
empty_array?([1,2,3,4,5], [])
p "-------------------------------------------------------------------------------------------------------"

p "Retornar la reversa de un arreglo"
p reverse([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Retornar el tamaño de un array"
p array_length([1,2,3,4,5])
p "-------------------------------------------------------------------------------------------------------"

p "Retornar true en caso de que el arreglo contenga el valor que se le pasa por parametro"
p include?([1,2,3,4,5], 6)
p "-------------------------------------------------------------------------------------------------------"

p "Unir un arreglo y separarlo con un valor pasado por parametro"
p join([1,2,3,4,5], "-")
p "-------------------------------------------------------------------------------------------------------"