# Node class
class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

# BinarySearchTree implementation
class BinarySearchTree
  attr_accessor :root
  def initialize(value)
    @root = Node.new(value)
  end

  def insert(value)
    set_current_node
    insert_node(value)
  end

  def traverse(node)
    return if node.nil?

    traverse(node.left) if node.left
    traverse(node.right) if node.right

    puts node.value
  end

  private

  def insert_node(value)
    if @current_node.value > value
      @current_node = @current_node.right until @current_node.right.nil?
      @current_node.right = Node.new(value)
    else
      @current_node = @current_node.left until @current_node.left.nil?
      @current_node.left = Node.new(value)
    end
  end

  def set_current_node
    @current_node = @root
  end
end

binary_tree = BinarySearchTree.new(20)
binary_tree.insert(32)
binary_tree.insert(18)
binary_tree.insert(42)
binary_tree.insert(28)
binary_tree.insert(19)
binary_tree.insert(8)
binary_tree.traverse(binary_tree.root)
