load 'library.rb'

def evalue(status, char)
	case status
	when 0
		if char.letter?
			1
		else
			'e'
		end
	when 1
		if char.letter?
			1
		elsif char.numeric?
			2
		else
			'e'
		end
	when 2
		if char.numeric?
			2
		elsif char.letter?
			3
		else
			'e'
		end
	else
		'e'
	end
	
end

execute("2aasdjasdkj")