boxes = $<.map{|x| x.chomp.split(',').map(&:to_i)}.each_with_index.map{|x,i| x[3] = i;x} 
connections = boxes.combination(2).map{|c| 
	box1,box2 = c
	[c[0], c[1], (box1[0]-box2[0]) ** 2 + (box1[1]-box2[1]) ** 2 + (box1[2]-box2[2]) ** 2]
}.sort_by{|c| c[2]}.to_a
size = boxes.size
ds  = Array.new(size){|x| x}

def get_root ds, i
	out = i
	until ds[out] == out
		out = ds[out]
	end
	ds[i] = out
	out
end

count = 0
connections.each do |c|
	count += 1
	break if count > 1000
	left_index = c[0][3]
	right_index = c[1][3]

	left_root = get_root(ds,left_index)
	right_root = get_root(ds,right_index)

	next if left_root == right_root
	ds[right_root] = left_root
end

out = Array.new(size, 0)
size.times do |i|
	out[get_root(ds, i)] += 1
end
p out.sort.reverse[0..2].reduce(:*)

