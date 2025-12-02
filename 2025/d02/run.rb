p gets.chomp.split(?,).map{|x|
	ids = []
	left, right = x.split(?-)
	while left.to_i <= right.to_i
		if left.size % 2 == 0
			m = left.size/2
			#l = left[0...m]
			#r = left[m...left.size]
			ids << left.to_i if left[0...m] == left[m...left.size]
		else
			s = ((left.size + 1) / 2) - 1
			left = "1" + "0"*s + "1" + "0"*s
			next

		end
		#count += 1
		left = (left.to_i + 1).to_s
	end
	ids
}.map(&:sum).sum
