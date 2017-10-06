class Queue

  def initialize
    @queue
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dump
  end
end

if $PROGRAM_NAME == __FILE__
new_queue = Queue.new
end
