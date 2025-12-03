p $<.map{|x|
	x = x.chomp.chars
	best = x[0...12]
	x[12..-1].each{|c|
		variants = [best];
		12.times do |i|
			variants << best.dup.tap{|y|y.delete_at(i)} + [c]
		end
		best = variants.max_by{|y|(y*"").to_i}
	}
	(best*"").to_i
}.sum
