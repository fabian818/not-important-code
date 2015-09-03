load 'library.rb'

def evalue(status, char)
	case status
	when 0
		if char == '"'
			1
		else
			'e'
		end
	when 1
		if numeric?(char)
			1
		elsif letter?(char)
			2
		else
			'e'
		end
	when 2
		if char == '"'
			3
		else
			'e'
		end
	else
		'e'
	end
	
end

execute("a3928472839754aa")