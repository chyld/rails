class Node
  attr_accessor :data, :nxt

  def initialize(value)
    @data = value
  end

  def to_s
    "The data is #{data} and the next node's data is #{nxt.data if nxt}"
  end
end
