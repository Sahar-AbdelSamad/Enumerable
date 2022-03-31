require 'MyEnumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
list = MyList.new(1, 2, 3, 4)
