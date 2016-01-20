movies = {
  star_wars_vii: 4
}

puts "Add a movie"
choice = gets.chomp

case choice
  when "add"
    puts "Added!"
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
