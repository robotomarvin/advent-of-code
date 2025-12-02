p gets.chomp.split(?,).map{|x|
	ids = []
	left, right = x.split(?-)
	while left.to_i <= right.to_i
		found = false
		(1..(left.size/2)).each{|m|
			next if left.size % m != 0
			if left.chars.each_slice(m).map{|x|x*""}.uniq.size == 1
				found = true
				break
			end
		}
		if found
			ids << left.to_i
		end
		left = (left.to_i + 1).to_s
	end
	ids
}.map(&:sum).sum
