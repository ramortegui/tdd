class Stack
  def initialize
    @elements = []
  end
  def push(n)
    @elements << n
  end
  def size
    @elements.size
  end
  def pop
    @elements.pop
  end
end
