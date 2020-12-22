# Create LinkedList implementation for Ruby
class LinkedList
  attr_accessor :length, :head

  def initialize(value)
    @head = Node.new(value, nil)
    @length = 1
  end

  def append(value)
    current_node = @head
    current_node = current_node.next until current_node.next.nil?
    @length += 1
    current_node.next = Node.new(value, nil)
  end

  def prepend(value)
    current_node = @head
    @length += 1
    @head = Node.new(value, current_node)
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
    @length += 1
    current_node.next = Node.new(value, current_node.next)
  end

  def delete(index)
    current_node = traverse(index)
    unwanted_node = current_node.next
    @length -= 1
    current_node.next = unwanted_node.next
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
  attr_accessor :value, :next

  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

link_list = LinkedList.new(10)
link_list.append(5)
link_list.append(16)
link_list.prepend(1)
link_list.insert(2, 12)
puts link_list.printlist
link_list.delete(2)
puts link_list.printlist
