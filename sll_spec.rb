require_relative 'sll'

RSpec.describe Node do
	before do
		@newNode = Node.new(10, 20)
	end
	it 'Node should have two attributes, value and next' do
		expect(@newNode.value).to eq(10)
		expect(@newNode.next).to eq(20)
	end
end


RSpec.describe SLL do
	before do
		@node4 = Node.new(4, nil)
		@node3 = Node.new(3, @node4)
		@node2 = Node.new(2, @node3)
		@node1 = Node.new(1, @node2)
		@newList = SLL.new(@node1)
	end
	it 'SLL should have a head attribute which refers to the first node in the list' do
		expect(@newList.head).to eq(@node1)
	end
	it 'SLL should have a method called insert which takes in a value you wish to add to the SLL and a value you wish to add that Node after; def insert(val, previousVal)' do
		@newList.insert(20, 3)
		newNode = @node3.next
		expect(@node3.next).to eq(newNode)
		expect(newNode.value).to eq(20)
		expect(newNode.next).to eq(@node4)
	end
	it 'SLL should have a method called find which when invoked returns the node if found in the SLL or nil if not found' do
		expect(@newList.find(3)).to eq(@node3)
		expect(@newList.find(9)).to eq(nil)
	end
	it 'SLL should have a method called remove which should remove the node with that value, return nil if not found' do
		expect(@newList.remove(100)).to eq(nil)
		@newList.remove(3)
		expect(@node2.next).to eq(@node4)
	end
	# it 'SLL should have a method called display_nodes which when called shows an array of all of the current nodes in the list' do
	# 	expect(@newList).to eq()
	# end
	# it 'SLL should have a method called display_values which when called shows an array of all the current values in the SLL' do
	# 	expect(@newList).to eq()
	# end
	# it 'SLL should have a method called add which when invoked add that node to the end of the SLL' do
	# 	expect(@newList).to eq()
	# end
	# it 'SLL should have a method called removeAll which when invoked removes all of the nodes from the SLL' do
	# 	expect(@newList).to eq()
	# end
	# it 'SLL should have two methods called min and max which return the min and max values of the SLL' do
	# 	expect(@newList).to eq()
	# end
	# it 'SLL should have a method called how_many which when called returns the count of how many nodes are in the SLL' do
	# 	expect(@newList).to eq()
	# end

end




























