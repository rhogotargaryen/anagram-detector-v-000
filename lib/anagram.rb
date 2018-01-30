class Anagram
  attr_accessor :name
  def match(w_array)
    w_array.each do |x|
      if x == @name (/\w+/)
        x
      end
    end
  end
end
