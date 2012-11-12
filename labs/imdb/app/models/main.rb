class Main
  def self.run
    puts "(a)ctor or (q)uit"
    response = gets.chomp
    while response != 'q'
      puts "Name?"
      name = gets.chomp
      puts "Gender?"
      gender = gets.chomp

      Actor.create(:name => name, :gender => gender)

      puts "(a)ctor or (q)uit"
      response = gets.chomp
    end
  end
end
