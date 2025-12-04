map = $<.map{|x|x.chomp.chars}
dirs = [-1,0,1,-1,1].permutation(2).to_a.uniq
max_x = map.size
max_y = map[0].size
p (0...max_x).map {|x|
	(0...max_y).map {|y|
		if map[x][y] == '.'
			next 0
		end
		c= dirs.map{|d|
			new_x = x+d[0]
			new_y = y+d[1]
			if new_x < 0 || new_x >= max_x || new_y < 0 || new_y >= max_y
				next false
			end
			map[new_x][new_y] == '@'
		}.count(true)
		c >= 4 ? 0 : 1
	}.sum
}.sum
