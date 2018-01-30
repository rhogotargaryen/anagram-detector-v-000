class Anagram
  attr_accessor :word
  def match(w_array)
    w_array.each do |x|
      if x.scan(/\w+/) { |match|  } == word.scan(/\w+/)
        x
      end
    end
  end
end
