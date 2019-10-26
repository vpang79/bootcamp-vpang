class LinkedListNode
	attr_accessor :value, :next_node
	
	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

def print_values(list_node)
	if list_node 
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end
	
def tortoise_hare(first_node)
  tortoise = first_node
  hare = first_node
  
  while hare
    if hare.next_node == nil
      return print "false\n"
    end

    hare = hare.next_node

    if hare.next_node == nil
      return print "false\n"
    end

    hare = hare.next_node
    tortoise = tortoise.next_node

    if hare == tortoise
      return print "true\n"
    end
  end
  puts "There's nothing to determine."
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(55, node3)
node5 = LinkedListNode.new(76, node4)
node6 = LinkedListNode.new(88, node5)
node7 = LinkedListNode.new(23, node6)
node8 = LinkedListNode.new(8, node7)
node1.next_node = node8

puts tortoise_hare(node8)
