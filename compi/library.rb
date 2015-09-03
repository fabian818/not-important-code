# El método devuelve true si el caracter es una letra

def letter?(lookAhead)
	lookAhead =~ /[[:alpha:]]/
end

# El método devuelve true si el caracter es un número

def numeric?(lookAhead)
	lookAhead =~ /[[:digit:]]/
end

# Método para ejecutar las cadenas

def execute(my_string)
	# Definimos el estado inicial en 0
	status = 0
	# Iteramos la cadena con el método each

	my_string.split(//).each do |char|
		# Ejecutamos el método evalue del ejercicio que lo llame
		# introducimos el estado y el caracter correspondiente, y nos devuelve el estado siguiente
		status = evalue(status, char)
		p status
	end
	# Finalmente imprimimos el estado final, puede dar e, que es el estado error.
	p 'Estado final es ' + status.to_s
end
