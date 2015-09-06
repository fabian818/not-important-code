def reverse string
	if string.length.eql? 1
		string
	else
		reverse(string[1, string.length]) + string[0]
	end
end

p reverse "tu mama calata profe de mierda"