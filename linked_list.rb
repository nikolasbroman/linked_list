class LinkedList

  def append
    #adds a new node to the end of the list
  end

  def prepend
    #adds a new node to the start of the list
  end

  def size
    #returns the total number of nodes in the list
  end

  def head
    #returns the first node in the list
  end

  def tail
    #returns the last node in the list
  end

  def at(index)
    #returns the node at the given index
  end

  def pop
    #removes the last element from the list
  end

  def contains?
    #returns true if the passed in value is in the list and otherwise returns false
  end

  def find(data)
    #returns the index of the node containing data, or nil if not found
  end

  def to_s
    #( data ) -> ( data ) -> ( data ) -> nil
  end

end


class Node
  #value
  #next_node
end