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
		if letter?(char)
			1
		elsif numeric?(char)
			2
		else
			'e'
		end
	when 2
		if numeric?(char)
			2
		elsif letter?(char)
			3
		else
			'e'
		end
	else
		'e'
	end
	
end

execute("2aasdjasdkj")