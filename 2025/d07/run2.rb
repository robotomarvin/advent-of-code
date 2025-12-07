map = $<.map{|x| x.chomp.chars.map{|y| y=='.' ? 0 : y}}

rows=map.size
cols=map[0].size
rows.times do |i|
	cols.times do |j|
		next if i + 1 >= rows
		next if map[i][j] == '.'
		next if map[i][j] == '^'
		count = map[i][j] == 'S' ? 1 : map[i][j]
		if map[i+1][j] == '^'
			map[i+1][j-1] += count
			map[i+1][j+1] += count
		else
			map[i+1][j] += count
		end
	end
end

p map[-1].filter{|x| x.is_a?(Integer)}.sum
