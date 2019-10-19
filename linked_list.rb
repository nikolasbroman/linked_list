class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(node)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def size
    size = 0
    current_node = @head
    until current_node.nil?
      size += 1
      current_node = current_node.next_node
    end
    size
  end

  def at(index)
    unless @head.nil?
      current_node = @head
      while index > 0
        current_node = current_node.next_node
        index -=1
      end
      current_node
    end
  end

  def pop
    unless @head.nil?
      current_node = @head
      until current_node.next_node == @tail
        current_node = current_node.next_node
      end
      current_node.next_node = nil
      @tail = current_node
    end
  end

  def contains?(value)
    current_node = @head
    until current_node.nil?
      return true if current_node.value == value
      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    index = 0
    current_node = @head
    until current_node.nil?
      return index if current_node.value == value
      index += 1
      current_node = current_node.next_node
    end
    nil
  end

  def to_s
    string = ""
    current_node = @head
    until current_node.nil?
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    string += "nil"
    string
  end

end


class Node
  attr_accessor :value, :next_node
  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end


# Below is example code to showcase and test
# the functionality of the LinkedList class

=begin
list = LinkedList.new

list.append(Node.new("A"))
list.append(Node.new("B"))
list.append(Node.new("C"))
list.prepend(Node.new("c"))
list.prepend(Node.new("b"))
list.prepend(Node.new("a"))

puts
puts "list.size:"
puts list.size
puts
puts "list.to_s:"
puts list.to_s
puts
puts "list.contains?(\"C\")"
puts list.contains?("C")
puts
puts "(list.pop)"
list.pop
puts
puts "list.to_s:"
puts list.to_s
puts
puts "list.contains?(\"C\")"
puts list.contains?("C")
puts
puts "list.find(\"B\")"
puts list.find("B")
puts
puts "list.head:"
p list.head
puts
puts "list.tail:"
p list.tail
puts
puts "list.at(3):"
p list.at(3)
puts
=end