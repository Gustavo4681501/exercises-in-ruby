require "json"
require "yaml"
require 'csv'
#-----------------------------------YAML-------------------------------------------------------
pokemon = [
    {name: "gengar",
    type: "ghost" ,
    level: 100
    },

    {name: "sceptile",
    type: "grass" ,
    level: 100
    },

    {name: "arceus",
    type: "normal" ,
    level: 100
    }
]


archivo_yml = 'pokemon.yml'

File.open(archivo_yml, 'w') do |archivo|
  archivo.write(pokemon.to_yaml)
end

puts "Se ha creado el archivo YAML: #{archivo_yml}"


#-----------------------------------JSON-------------------------------------------------------

pokemon = [
    {name: "gengar",
    type: "ghost" ,
    level: 100
    },

    {name: "sceptile",
    type: "grass" ,
    level: 100
    },

    {name: "arceus",
    type: "normal" ,
    level: 100
    }
]


json_str = JSON.generate(pokemon)

File.open('archivo.json', 'w') do |archivo|
    archivo.write(json_str)
end

puts "Se ha creado el archivo json: #{json_str}"

#-----------------------------------CSV-------------------------------------------------------






archivo_csv = "pokemon.csv"


h = { 'name' => 'gengar', 'type' => 'ghost', 'level' => 100 }
CSV.open("data.csv", "wb") {|csv| h.to_a.each {|elem| csv << elem} }

puts "Archivo CSV creado correctamente: #{archivo_csv}"