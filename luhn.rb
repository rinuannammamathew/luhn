class Node
  attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end
def print_values(node)
  if node
    print "#{node.value} --->"
    print_values(node.next_node)
    else
    print "nil\n"
    return 
  end
end
def infinite_loop?(node)
  tortoise = node
  hare = node
  until hare.nil? do
    hare = hare.next_node
    return false if hare.nil?
    

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end
    return false
  
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)
node4 = Node.new(35, node3)
node5 = Node.new(89, node4)
node6 = Node.new(72, node5)

puts infinite_loop?(node5)
node1.next_node = node6
puts infinite_loop?(node6)

