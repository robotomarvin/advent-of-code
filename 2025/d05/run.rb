ranges,ids = ($<.map(&:chomp)*"\n").split("\n\n").map(&:split)
ranges.map!{|x|x.split('-').map(&:to_i)}
ids.map!(&:to_i)

p ids.count{|x|
	ranges.find{|y|
		x >= y[0] && x <= y[1]
	}
}
