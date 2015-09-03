load 'library.rb'

def evalue(status, char)
	case status
	when 0
		if letter?(char)
			1
		else
			'e'
		end
	when 1
		if char == '#'
			2
		elsif numeric?(char)
			1
		else
			'e'
		end
	when 2
		if letter?(char)
			3
		else
			'e'
		end
	else
		'e'
	end
	
end

execute('s2#a')