# Create Doubly LinkedList implementation for Ruby
class DoublyLinkedlist
  # attr_accessor :length, :head, :tail

  def initialize(value)
    @head = Node.new(value, nil, nil)
    # @tail = @head
    # @length = 1
  end

  def append(value)
    current_node = @head
    current_node = current_node.next until current_node.next.nil?
    # @length += 1
    new_node = Node.new(value, nil, current_node)
    current_node.next = new_node
    puts inspect
  end

  def prepend(value)
    current_node = @head
    # @length += 1
    @head = Node.new(value, current_node, nil)
    current_node.prev = @head
  end

  def printlist
    current_node = @head
    array = []
    until current_node.nil?
      array << current_node.value
      current_node = current_node.next
    end
    array
  end

  def insert(index, value)
    current_node = traverse(index)
    # @length += 1
    follower_node = current_node.next
    new_node = Node.new(value, current_node.next, current_node)
    follower_node.prev = new_node
    current_node.next = new_node
  end

  def delete(index)
    current_node = traverse(index)
    unwanted_node = current_node.next
    # @length -= 1
    current_node.next = unwanted_node.next
    current_node.prev = unwanted_node.prev
  end

  def traverse(index)
    i = 0
    current_node = @head
    while i < (index - 1)
      current_node = current_node.next
      i += 1
    end
    current_node
  end
end
# Node class
class Node
  attr_accessor :value, :next, :prev

  def initialize(value, next_node, prev_node)
    @value = value
    @next = next_node
    @prev = prev_node
  end
end


link_list = DoublyLinkedlist.new(10)
link_list.append(5)
link_list.append(16)
link_list.prepend(1)
link_list.insert(2, 12)
puts link_list.printlist
link_list.delete(2)
puts link_list.printlist
