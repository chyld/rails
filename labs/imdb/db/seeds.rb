Movie.create(:name => "Skyfall", :description => "James Bond", :rating => "NC-17")
Movie.create(:name => "Goldenfinger", :description => "James Bond I", :rating => "G")
Movie.create(:name => "James Bond I", :description => "James Bond II", :rating => "PG-13")
Movie.create(:name => "Bourne Ultimatum", :description => "Jason Bourne", :rating => "R")
Movie.create(:name => "The Shining", :description => "Nickelson", :rating => "NC")

Director.create(:name => "Spilberg", :age => 60, :gender => "male")
Director.create(:name => "Soderberg", :age => 40, :gender => "male")
Director.create(:name => "Sophia", :age => 35, :gender => "female")

Actor.create(:name => "Megan Fox", :gender => "female")
Actor.create(:name => "Scarlotte Johannson", :gender => "female")
Actor.create(:name => "Jessica Alba", :gender => "female")
