class Anagram
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def match(w_array)
    self.match?(w_array)
    self.ana(w_array)
  end
  def match?(w_array)
    if w_array.include?(@name)
      return @name
    else
      w_array = []
    end
  end
  def parse(w_array)
    w_array.select! { |x| x.length == @name.length }
    w_array
  end
  def ana(w_array)
    t = []
    v = @name.scan /\w/
    w_array.each do |x|
      r = x.scan /\w/
      t << v
    end
    t.each do |x|
      if x.sort == v.sort
        return x.join
      end
    end
  end
end
