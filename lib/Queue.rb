class Queue

  def initialize
    @store = Array.new(10)
    @max_size = 10
    @front = -1
    @back = -1
  end

  def enqueue(element)
    if @front == -1
      @front = 0
      @back = 1
      @store[@front] = element
    elsif @front == @back
      raise ArgumentError, "Queue Full"
    else
      @store[@back] = element
      @back = (@back + 1) % @max_size
    end
  end

  def dequeue
    if @front == -1
      raise ArgumentError, "Queue Empty"
    else  
      value = @store[@front]
      @front = (@front + 1) % @max_size
      if @front == @back # Queue is empty
        @front = @back = -1 
      end
      return value
    end
  end

  def empty?
    return @front == -1
  end

  def to_s
    list = []
    current = @front
    while current != @back
      list << @store[current]
      current = (current + 1) % @max_size
    end
    return list.to_s
  end
end
