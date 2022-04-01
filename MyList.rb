require_relative 'MyEnumerable.rb'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    for item in @list do
      yield item
    end
  end

end

list = MyList.new(1, 2, 3, 4)

puts list.all? { |a| a < 5 }
puts list.all? { |a| a > 5 }

puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }

puts list.filter {|e| e.even?}
