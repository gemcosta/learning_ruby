#This is a very simple program that asks for user input 3 times to create a small grocery list

#define the creation of the hash
def create_list
  print "What is the list name?\n"
  name = gets.chomp
  
  hash = {"name" => name, "items" => Array.new}
  return hash
end

#define the method for user input and adding it to the hash
def add_list_item
  print "What is the item called?\n"
  item_name = gets.chomp
  
  print "How much #{item_name}?\n"
  quantity = gets.chomp
  
  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end

#defining a ---- seperator for better visibility
def print_seperator(character="-")
  puts character * 80
end


#defining the final printout
def print_list(list)
  puts "List Name: #{list['name']}"
  print_seperator()
    
  list['items'].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" + 
    "Quantity: " + item['quantity']
    print_seperator()
  end #end do
  
end #end print_list


list = create_list()

puts "Great! Add some items to your list now."

list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

puts "Here's your list\n"
print_list(list)