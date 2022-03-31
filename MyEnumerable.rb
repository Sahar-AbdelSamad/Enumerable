module MyEnumerable

  def all?
    bool = true
    each { 
      |n| 
      if (yield n) {
        bool = false 
        # |n| bool = false unless yield n }
      }
    bool
  end

end