p $<.map{|x|
	x = x.chomp.chars
	l,r = x[0..1]
	x[2..-1].each{|c|
		if r>l
			l = r
			r = c
		elsif c > r
			r = c
		end
	}
	(l+r).to_i
}.sum
