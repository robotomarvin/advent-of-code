map = $<.map{|x| x.chomp.chars}

rows=map.size
cols=map[0].size
rows.times do |i|
	cols.times do |j|
		next if i + 1 >= rows
		next if map[i][j] == '.'
		next if map[i][j] == '^'
		if map[i+1][j] == '^'
			map[i+1][j-1] = '|'
			map[i+1][j+1] = '|'
		else
			map[i+1][j] = '|'
		end
	end
end

count = 0
rows.times do |i|
	cols.times do |j|
		next unless map[i][j] == '^'
		next unless map[i-1][j] == '|'
		count += 1
	end
end


puts map.map{|x| x*""}*"\n"
puts count
