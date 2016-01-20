movies = {
  star_wars_vii: 4
}

puts "Input add, update, display or delete"
choice = gets.chomp

case choice
  when "add"
    puts "Input a movie title"
      title = gets.chomp.to_sym
    puts "Input its rating"
      rating = gets.chomp.to_i
    movies[title] = rating
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
