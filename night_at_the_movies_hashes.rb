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
    puts "Input a movie title"
    title = gets.chomp.to_sym
      if movies[title].nil?
        puts "Movie does not currently exist"
      else
        puts "Input a new rating"
        rating = gets.chomp.to_i
        movies[title] = rating
      end
  when "display"
    movies.each do |movie, rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "Input movie title to delete"
    title = gets.chomp.to_sym
      if movies[title].nil?
        puts "Movie does not currently exist"
      else
        movies.delete(title)
        puts "#{title} deleted"
      end
  else
    puts "Error!"
end
