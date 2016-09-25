require_relative 'whattowatch'
require_relative 'movie_class'

class User

  def read_data
    require 'CSV'
    @data = []
    CSV.foreach('user_data.txt') do |subarray|
      subarray = subarray[0].gsub(/\s+/, ',').split(',')
      @data << subarray
    end
    @data
  end

  def run_all_user_ratings
    user = User.new
    user.read_data
    user.ask_for_user_id
    user.get_user_ratings
    user.show_user_ratings
    select_search 
  end

  def ask_for_user_id
    puts "What user would you like to find the ratings for? Please use the user's ID number: "
    @user_id = gets.chomp.to_i
    ask_for_user_id until @user_id > 0
  end

  def get_user_ratings
    @user_ratings = []
    @data.each do |subarray|
      if @user_id == subarray[0].to_i
        @user_ratings << subarray[2].to_i
      end
    end
    @user_ratings
  end

  def show_user_ratings
    p @user_ratings
    puts "Here are all the available ratings for user #{@user_id}."
  end
end
