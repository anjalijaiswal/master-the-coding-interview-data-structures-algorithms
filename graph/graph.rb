# Graph class
class Graph
  attr_accessor :adjacency_list, :length
  def initialize
    @adjacency_list = {}
    @length = 0
  end

  def add_vertex(vertex)
    @adjacency_list[vertex] = []
  end

  def add_egde(vertex1, vertex2)
    @adjacency_list[vertex1] << vertex2
    @adjacency_list[vertex2] << vertex1
  end
end
