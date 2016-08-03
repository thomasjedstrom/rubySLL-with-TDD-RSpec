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
		current = self.head
		while (current.value != val) && (current.next != nil)
			previous = current
			current = current.next
		end
		if current.next == nil
			return nil
		end
		previous.next = current.next
	end
	def display_nodes
		arr = []
		current = self.head
		if current != nil
			arr.push(current)
			while current.next != nil
				current = current.next
				arr.push(current)
			end
		end
		arr
	end
	def display_values
		arr = []
		current = self.head
		if current != nil
			arr.push(current.value)
			while current.next != nil
				current = current.next
				arr.push(current.value)
			end
		end
		arr
	end
	def add(val)
		current = self.head
		while current.next != nil
			current = current.next
		end
		newNode = Node.new(val)
		current.next = newNode
	end
	def removeALL
		self.head = nil
	end
	def min
		min = self.head
		current = self.head
		while current.next != nil
			current = current.next
			if current.value < min.value
				min = current
			end
		end
		min
	end
	def max
		max = self.head
		current = self.head
		while current.next != nil
			current = current.next
			if current.value > max.value
				max = current
			end
		end
		max
	end
	def how_many
		count = 0
		current = self.head
		if current != nil
			count += 1
			while current.next != nil
				current = current.next
				count += 1
			end
		end
		count
	end
end
