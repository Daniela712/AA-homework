class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

if $PROGRAM_NAME == __FILE__
new_stack = Stack.new

end
