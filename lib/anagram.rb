class Anagram
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def match(w_array)
    if w_array.include?(@name)
      return @name
    else
      w_array.select! { |x| x.length == @name.length }
      t = []
      v = @name.scan /\w/
      w_array.each do |x|
        r = x.scan /\w/
        t << r
      end
      t.each do |x|
        if x.sort == v.sort
          t << x.join
        end
      end
    end
    t
  end
end
