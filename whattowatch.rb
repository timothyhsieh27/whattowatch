require_relative 'movie_class'
require_relative 'user_class'


def select_search

  puts "Please enter the number of the function you would like to perform: "
  puts "(1) Find all ratings of a movie (need movie ID)."
  puts "(2) Find the average rating of a movie (need movie ID)."
  puts "(3) Find the name of a movie (need movie ID)."
  puts "(4) Find all ratings of a user (need user ID)."
  selection = gets.chomp.to_i
  loop do

    if selection == 1
      movie = Movie.new
      movie.run_all_movie_ratings
      break
    elsif selection == 2
      movie = Movie.new
      movie.run_average_movie_rating
      break
    elsif selection == 3
      movie = Movie.new
      movie.run_movie_by_name
      break
    elsif selection == 4
      user = User.new
      user.run_all_user_ratings
      break
    else
      puts "Please enter a valid option (1-4): "
      selection = gets.chomp.to_i
    end
  end
end

def main
select_search
end

main if __FILE__ == $PROGRAM_NAME
