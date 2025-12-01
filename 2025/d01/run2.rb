state = 50;
p $<.map{|x|
	original_state = state
	if x[0] === "L"
		x[0] = "-"
	else
		x[0] = "+"
	end
	i = x.to_i
	count = i.abs / 100
	i %= (i<=>0)*100

	state += i
	if original_state != 0 && (state <= 0 || state > 99)
		count += 1
	end
	state %= 100
	print "#{count}\t#{original_state}#{x.strip}=>#{state}\t#{i}\n"
	count
}.sum()
