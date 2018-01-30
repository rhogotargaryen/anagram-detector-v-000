class Anagram
  attr_accessor :name
  def initialize(name)
    name = @name
  end
  def match(w_array)
    w_array.include?(@name) ? @name : []
  end
end
