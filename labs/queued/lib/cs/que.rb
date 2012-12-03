class Que
  def initialize
    @data = []
  end

  def enqueue(value)
    @data.unshift(value)
  end

  def dequeue
    if @data.length > 0
      @data = @data[0, @data.length - 1]
    else
      []
    end
  end

  def to_s
    "There are #{@data.length} items in this queue : #{@data}"
  end
end
