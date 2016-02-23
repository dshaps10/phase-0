class NameData

  def get_name
    @name = "Dan Shapiro"
  end
end

class Greetings

  attr_reader :name_data

  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{name_data.get_name}! How wonderful to see you today."
  end
end

greet = Greetings.new
puts greet.hello