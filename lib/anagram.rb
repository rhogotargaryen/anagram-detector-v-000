class Anagram
  attr_accessor :name
  def initialize(name)
    name = @name
  end
  def match(w_array)
    w_array.include?(@name) ? @name : []
  end
  def detector(w_array)
    w_array.each do |x|
      if x.scan(/\w+/) == @name.scan(/\w+/)
        x
      end
    end
  end
end
