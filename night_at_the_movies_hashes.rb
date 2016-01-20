movies = {
  star_wars_vii: 4
}

puts "Input add, update, display or delete"
choice = gets.chomp

case choice
  when "add"
    puts "Input a movie title"
      title = gets.chomp.to_sym
    if movies[title].nil?
      puts "Input its rating"
      rating = gets.chomp.to_i
      movies[title] = rating
    else
      puts "That movie is already in the list"
    end
  when "update"
    puts "Updated!"
  when "display"
    puts "Movies!"
  when "delete"
    puts "Deleted!"
  else
    puts "Error!"
end
