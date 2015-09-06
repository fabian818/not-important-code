def order(array)
	if array.size == 1
		array
	else
		min = array.first
		cont = 0
		place = 0
		array.each do |element|
			if element < min
				min = element
				place = cont
			end
			cont = cont + 1
		end
		array.delete_at(place)
		order(array) << min
	end
end

p order([3,56,4,7,9])