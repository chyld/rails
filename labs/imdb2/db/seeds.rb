Movie.delete_all
Studio.delete_all

s1 = Studio.create(:name => "Universal", :budget => 3, :address => "Hollywood")
s2 = Studio.create(:name => "Warner Bros", :budget => 5, :address => "Hollywood")
s3 = Studio.create(:name => "Lionsgate", :budget => 7, :address => "Hollywood")
s4 = Studio.create(:name => "Sony Pictures", :budget => 8, :address => "Hollywood")
s5 = Studio.create(:name => "New Line", :budget => 9, :address => "Hollywood")

m1 = Movie.create(:name => "Nemo", :gross => 9_000, :rating => "G")
m2 = Movie.create(:name => "Titanic", :gross => 8_000, :rating => "PG")
m3 = Movie.create(:name => "LOTR", :gross => 7_000, :rating => "R")
m4 = Movie.create(:name => "Day of the Dead", :gross => 6_000, :rating => "PG-13")
m5 = Movie.create(:name => "Apocolypse Now", :gross => 5_000, :rating => "NC-17")
m6 = Movie.create(:name => "The Shining", :gross => 4_000, :rating => "G")

s1.movies = [m1, m2]
s2.movies = [m3, m4, m5]
s3.movies << m6
