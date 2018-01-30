class Anagram
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def match(w_array)
    if w_array.include?(@name)
      return []
    else
      w_array.select! { |x| x.length == @name.length }
      w_array
    end
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