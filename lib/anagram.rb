class Anagram
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def match(w_array)
    self.match?(w_array)
  end
  def match?(w_array)
    w_array.include?(@name) ? @name : []
  end
  def detect(w_array)
    w_array.each do |x|
      if x.length != @name.length
        w_array.remove(x)
      end
    end
end
