ranges,ids = ($<.map(&:chomp)*"\n").split("\n\n").map(&:split)
ranges.map!{|x|x.split('-').map(&:to_i)}
ranges.sort_by!{|x| x[0]}

sum = 0
top_right = 0
ranges.each do |left, right|
	new_left = [left, top_right + 1].max
	next if new_left > right
	top_right = right
	sum += right - new_left + 1
end

p sum

