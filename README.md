# What to Watch

This program is designed to provide essential search functions by either movie ID or user ID to help retrieve movie ratings, movie titles, and user ratings.

The primary document, whattowatch.rb, requires its relatives, class Movie and class User, from separate files. After booting the program, the user is provided the following options:

(1) Find all ratings of a movie (need movie ID).
(2) Find the average rating of a movie (need movie ID).
(3) Find the name of a movie (need movie ID).
(4) Find all ratings of a user (need user ID).

Selecting each of these options will run a chained set of class methods, which sequence the operations necessary to output the searched item from the user.

(1) Find all ratings of a movie (function sequence):
- Read and refine the data provided from the movielens website.
- Acquire search input from the user (movie's ID number).
- Loop through the refined data set and search for matches in movie ID number. If a movie's ID number matches the search, its rating is stored in a separate array.
- The array is displayed to the user.

(2) Find the average rating of a movie (need movie ID).
- Read and refine the data provided from the movielens website.
- Acquire search input from the user (movie's ID number).
- Loop through the refined data set and search for matches in movie ID number. If a movie's ID number matches the search, its rating is stored in a separate array.
- The sum of all ratings is calculated, and then divided by the number of all ratings for the searched movie. The result is the average rating of the movie, displayed for the user.

(3) Find the name of a movie (need movie ID).
- Read and refine the data provided from the movielens website.
- Acquire search input from the user (movie's ID number).
- Loop through the refined data set and search for matches in movie ID number. If a movie's ID number matches the search, its title is displayed to the user.

(4) Find all ratings of a user (need user ID).
- Read and refine the data provided from the movielens website.
- Acquire search input from the user (user's ID number).
- Loop through the refined data set and search for matches in user ID number. If a user's ID number matches the search, its rating is stored in a separate array.
- The array is displayed to the user.
