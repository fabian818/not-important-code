# ésta librería carga los metodos letter? y numeric? para evaluar si una cadena es numero o letra
# además carga el método execute, que toma la cadena total y la itera para evaluar cada caracter
# con el método evalue
load 'library.rb'

# El método evalue es el autómata en si

def evalue(status, char)
	case status
	when 0
		if numeric?(char)
			1
		else
			'e'
		end
	when 1
		if char == '$'
			2
		elsif letter?(char)
			1
		else
			'e'
		end
	else
		'e'
	end
	
end





# Finalmente luego de definir las reglas del autómata, se ejecuta el método execute.
# para mayor información lean el archivo library.rb

execute("2aasdjasdkj")