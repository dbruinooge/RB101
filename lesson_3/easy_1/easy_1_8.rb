# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney_array = Array.new
barney_array[0] = flintstones.key(2)
barney_array[1] = flintstones["Barney"]

p barney_array

# LS version

barney_array = flintstones.assoc("Barney")

p barney_array
