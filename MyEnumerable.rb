module MyEnumerable
  def all?
    boolean = true
    each { 
      |n| boolean = false unless yield n
    }
    boolean
  end

  def any?
    boolean = false
    each {
      |n| boolean = true if yield n
    }
    boolean
  end

  def filter
    filteredArray = []
    each { |n| filteredArray.push(n) if yield n}
    filteredArray
  end
end