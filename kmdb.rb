# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.

# **************************
# DON'T CHANGE OR MOVE
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
Rails.logger.info "------------------------"
Rails.logger.info "----- FRESH START! -----"
Rails.logger.info "------------------------"


# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO

#Studios

new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save

warner = Studio.find_by({"name" => "Warner Bros."})

#Movies

movie1 = Movie.new
movie1["title"] = "Batman Begins"
movie1["year_released"] = 2005
movie1["rated"] = "PG-13"
movie1["studio_id"] = warner["id"]
movie1.save

batman1 = Movie.find_by({"title" => "Batman Begins"})


movie2 = Movie.new
movie2["title"] = "The Dark Knight"
movie2["year_released"] = 2008
movie2["rated"] = "PG-13"
movie1["studio_id"] = warner["id"]
movie2.save

batman2 = Movie.find_by({"title" => "The Dark Knight"})

movie3 = Movie.new
movie3["title"] = "The Dark Knight Rises"
movie3["year_released"] = 2012
movie3["rated"] = "PG-13"
movie1["studio_id"] = warner["id"]
movie3.save

batman3 = Movie.find_by({"title" => "The Dark Knight Rises"})

#Actors

actor1 = Actor.new
actor1["name"] = "Christian Bale"
actor1.save

christian = Actor.find_by({"name" => "Christian Bale"})

actor2 = Actor.new
actor2["name"] = "Michael Caine"
actor2.save

michael = Actor.find_by({"name" => "Michael Caine"})

actor3 = Actor.new
actor3["name"] = "Liam Neeson"
actor3.save

liam = Actor.find_by({"name" => "Liam Neeson"})

actor4 = Actor.new
actor4["name"] = "Katie Holmes"
actor4.save

katie = Actor.find_by({"name" => "Katie Holmes"})

actor5 = Actor.new
actor5["name"] = "Gary Oldman"
actor5.save

gary = Actor.find_by({"name" => "Gary Oldman"})

actor6 = Actor.new
actor6["name"] = "Heath Ledger"
actor6.save

heath = Actor.find_by({"name" => "Heath Ledger"})

actor7 = Actor.new
actor7["name"] = "Aaron Eckhart"
actor7.save

aaron = Actor.find_by({"name" => "Aaron Eckhart"})

actor8 = Actor.new
actor8["name"] = "Maggie Gyllenhaal"
actor8.save

maggie = Actor.find_by({"name" => "Maggie Gyllenhaal"})

actor9 = Actor.new
actor9["name"] = "Tom Hardy"
actor9.save

tom = Actor.find_by({"name" => "Tom Hardy"})

actor10 = Actor.new
actor10["name"] = "Joseph Gordon-Levitt"
actor10.save

joseph = Actor.find_by({"name" => "Joseph Gordon-Levitt"})

actor11 = Actor.new
actor11["name"] = "Anne Hathaway"
actor11.save

anne = Actor.find_by({"name" => "Anne Hathaway"})

#Roles


role1 = Role.new
role1["movie_id"] = batman1["id"]
role1["actor_id"] = christian["id"]
role1["character_name"] = "Bruce Wayne"
role1.save

role2 = Role.new
role2["movie_id"] = batman1["id"]
role2["actor_id"] = michael["id"]
role2["character_name"] = "Alfred"
role2.save

role3 = Role.new
role3["movie_id"] = batman1["id"]
role3["actor_id"] = liam["id"]
role3["character_name"] = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4["movie_id"] = batman1["id"]
role4["actor_id"] = katie["id"]
role4["character_name"] = "Rachel Dawes"
role4.save

role5 = Role.new
role5["movie_id"] = batman1["id"]
role5["actor_id"] = gary["id"]
role5["character_name"] = "Commissioner Gordon"
role5.save

role6 = Role.new
role6["movie_id"] = batman2["id"]
role6["actor_id"] = christian["id"]
role6["character_name"] = "Bruce Wayne"
role6.save

role7 = Role.new
role7["movie_id"] = batman2["id"]
role7["actor_id"] = heath["id"]
role7["character_name"] = "Joker"
role7.save

role8 = Role.new
role8["movie_id"] = batman2["id"]
role8["actor_id"] = aaron["id"]
role8["character_name"] = "Harvey Dent"
role8.save

role9 = Role.new
role9["movie_id"] = batman2["id"]
role9["actor_id"] = michael["id"]
role9["character_name"] = "Alfred"
role9.save

role10 = Role.new
role10["movie_id"] = batman2["id"]
role10["actor_id"] = maggie["id"]
role10["character_name"] = "Rachel Dawes"
role10.save

role11 = Role.new
role11["movie_id"] = batman3["id"]
role11["actor_id"] = christian["id"]
role11["character_name"] = "Bruce Wayne"
role11.save

role12 = Role.new
role12["movie_id"] = batman3["id"]
role12["actor_id"] = gary["id"]
role12["character_name"] = "Commissioner Gordon"
role12.save

role13 = Role.new
role13["movie_id"] = batman3["id"]
role13["actor_id"] = tom["id"]
role13["character_name"] = "Bane"
role13.save

role14 = Role.new
role14["movie_id"] = batman3["id"]
role14["actor_id"] = joseph["id"]
role14["character_name"] = "John Blake"
role14.save

role15 = Role.new
role15["movie_id"] = batman3["id"]
role15["actor_id"] = anne["id"]
role15["character_name"] = "Selina Kyle"
role15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.

movie_studio = Movie.where({"studio_id" => warner["id"]})

for movie in movie_studio
    title = movie["title"]
    release_year = movie["year_released"]
    rating = movie["rated"]
    studio = Studio.find_by({"id" => movie["studio_id"]})
    puts "#{title} #{release_year} #{rating} #{studio["name"]}"
    
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
