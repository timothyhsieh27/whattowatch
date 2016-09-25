require_relative 'whattowatch'
require_relative 'user_class'

class Movie

  def read_data
    require 'CSV'
    @data = []
    CSV.foreach('user_data.txt') do |subarray|
      subarray = subarray[0].gsub(/\s+/, ',').split(',')
      @data << subarray
    end
    @data
  end

  def run_all_movie_ratings
    movie = Movie.new
    movie.read_data
    movie.ask_for_movie_rating_id
    movie.get_movie_ratings
    movie.show_movie_ratings
    select_search
  end

  def run_average_movie_rating
    movie = Movie.new
    movie.read_data
    movie.ask_for_movie_rating_id
    movie.get_movie_ratings
    movie.average_movie_ratings
    select_search
  end

  def run_movie_by_name
    movie = Movie.new
    movie.read_movie_specs
    movie.ask_for_movie_name_id
    movie.get_movie_name
    select_search
  end

  def ask_for_movie_rating_id
    puts "What movie would you like to get ratings for? Please use the movie ID number: "
    @movie_id = gets.chomp.to_i
    ask_for_movie_rating_id until @movie_id > 0
  end

  def ask_for_movie_name_id
    puts "What movie would you like to find the name of? Please use the movie ID number: "
    @movie_id = gets.chomp.to_i
    ask_for_movie_name_id until @movie_id > 0
  end

  def get_movie_ratings
    @movie_ratings = []
    @data.each do |subarray|
      if @movie_id == subarray[1].to_i
        @movie_ratings << subarray[2].to_i
      end
    end
    @movie_ratings
  end

  def show_movie_ratings
    p @movie_ratings
    puts "Here are all the available ratings for movie #{@movie_id}."
  end

  def average_movie_ratings
    @sum = 0
    @movie_ratings.each {|rating| @sum += rating}
    puts "The average rating of movie #{@movie_id} is #{(@sum.to_f/@movie_ratings.count.to_f).round(1)} stars."
  end

  def read_movie_specs
    require 'CSV'
    @movie_specs = []
    CSV.foreach('movies.txt') do |subarray|
      subarray = subarray[0].gsub(/\|/, ',').split(',')
      @movie_specs << subarray
    end
    @movie_specs
  end

  def get_movie_name
    @movie_specs.each do |subarray|
      if @movie_id == subarray[0].to_i
        @movie_name = subarray[1].to_s
      end
    end
    puts "The title of movie #{@movie_id} is #{@movie_name}."
  end

end
