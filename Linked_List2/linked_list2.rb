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
	
def reverse_list(list, previous=nil)
  # saving value of list's next node
  upcoming_node = list.next_node
  # change the list's next_node value to what is set as previous
  list.next_node = previous

  if upcoming_node
    # recursive method to reverse node order
    return reverse_list(upcoming_node, list)
  else
    return list
  end
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)
