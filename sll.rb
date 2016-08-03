class Node
	attr_accessor :value, :next
	def initialize(value, nextnode=nil)
		@value = value
		@next = nextnode
	end
end

class SLL
	attr_accessor :head
	def initialize(head)
		@head = head
	end
	def insert(val, previousVal)
		newNode = Node.new(val, nil)
		current = self.head
		while current.value != previousVal
			current = current.next
		end
		newNode.next = current.next
		current.next = newNode
	end
	def find(val)
		current = self.head
		while current.value != val
			current = current.next
			if current == nil
				break
			end
		end
		current
	end
	def remove(val)
		previous = self.head
		current = previous.next
		while previous.next != val
			previous = previous.next
			if previous == nil
				break
			end
		end
		if previous != nil
			previous.next = current.next
		end
		previous
	end
end


