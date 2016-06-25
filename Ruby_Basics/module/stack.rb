require_relative "stacklike"

class Stack
	include Stacklike
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