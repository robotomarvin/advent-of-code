state = 50;
p $<.map{|x|
	if x[0] === "L"
		x[0] = "-"
	else
		x[0] = "+"
	end
	i = x.to_i
	state = (state + i) % 100
}.count(0)
