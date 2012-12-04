class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def insert(value)
    if @head.nil?
      @head = Node.new(value)
    else
      @head.nxt = Node.new(value)
    end
  end

  def to_s
    "This is a single, sorted linked list"
  end
end
