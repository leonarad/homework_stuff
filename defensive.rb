def add_two(number)
	if number.respond_to? :+
		if number.respond_to? :push
			number.push 2
		elsif number.respond_to? :concat
			number + 2.to_s			
		else
			number + 2
		end
	end
end

def test
	puts add_two(1)
	puts add_two(1.0)
	puts add_two(nil)
	puts add_two({})
	puts add_two([])
	puts add_two(true)
	puts add_two("543")
end

test