state = 50;
p $<.map{|x|
	original_state = state
	x.tr! "LR","-+"
	i = x.to_i
	count = i.abs / 100
	i %= (i<=>0)*100

	state += i
	count += 1 if original_state != 0 && (state <= 0 || state > 99)
	state %= 100
	count
}.sum()
