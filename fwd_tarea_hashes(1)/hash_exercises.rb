def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  favorite_hash={
    color: color,
    number: number
  }
end

def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list.keys
end

def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch(:number_1, 42)
end

def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:color_b] = movie
  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end

def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number_1)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  p "favorite color", favorite_list
end

def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
end

def favorite_items(favorite_list)
  # return the values of favorite_list
  favorite_list.values
end

def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge(additional_list)
end

colors={
  color_b: "blue",
  color_r: "red",
  color_g: "green",
  color_y: "yellow"
}
numbers={
  number_1:1,
  number_2:2,
  number_3:3,
  number_4:4
}



# p "-----------------------------------------------------------------------------------------------"
# p "create a favorite hash", create_favorite_hash(colors, numbers)
# p "-----------------------------------------------------------------------------------------------"
# p "return the value of the color key", favorite_color(colors)
# p "-----------------------------------------------------------------------------------------------"
# p "Return the value of number key or 42 if not found", favorite_number(numbers)
# p "-----------------------------------------------------------------------------------------------"
# p "favorite movie",update_favorite_movie(colors, "Shrek 2")
# p "-----------------------------------------------------------------------------------------------"
# p "remove number", remove_favorite_number(numbers)
# p "-----------------------------------------------------------------------------------------------"
# p "favorite categories",favorite_categories(numbers)
# p "-----------------------------------------------------------------------------------------------"
# p "favorite item", favorite_items(colors)
# p "-----------------------------------------------------------------------------------------------"
# p "merge:", merge_favorites(numbers, colors)
# p "-----------------------------------------------------------------------------------------------"


def isogram?(string)
  original_length = string.length #4
  string_array = string.downcase.split #odin
  unique_length = string_array.uniq.length
  original_length == unique_length
end

p isogram?("odin")

