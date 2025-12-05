p ($<.map(&:chomp)*"\n").split("\n\n")[0].split.map{|x|x.split('-').map(&:to_i)}.sort_by{|x| x[0]}.reduce([0,0]) {|c,r|
	sum,top_right = c
	left,right = r
	left = [left, top_right + 1].max
	left > right ? [sum,top_right] : [sum + right - left + 1, right]
}[0]
