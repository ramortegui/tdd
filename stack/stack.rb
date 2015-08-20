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
    raise Execption.new('Cannot pop an empty stack') if self.empty?
    @elements.pop
  end
  def top
    raise Execption.new('Cannont pick on an empty stack') if self.empty?
    @elements.last
  end
  def empty?
    @elements.empty?
  end
end
