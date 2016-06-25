module M
	def report
		puts "Met report w M"
	end

end

class C
	include M
	def report 
		puts "met report w klasie C"
		puts "zostanie wyw nst, wyżej położona metoda report ..."
		super
		puts "Powrót z wywołania slowa kluczowego super"
	end
end

c = C.new
c.report