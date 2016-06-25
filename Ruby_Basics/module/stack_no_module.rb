class Stack
	attr_reader :stack 
	def initialize
		@stack = []
	end
	def add_to_stack(obj)
		@stack.push(obj)
	end
	def take_from_stack
		@stack.pop
	end
end

s = Stack.new
s.add_to_stack("element jeden")
s.add_to_stack("element dwa")
s.add_to_stack("element trzy")
puts "obiekty na stosie:"
puts s.stack
taken = s.take_from_stack
puts "usunieto:"
puts taken
puts "pozostale na stosie:"
puts s.stack
