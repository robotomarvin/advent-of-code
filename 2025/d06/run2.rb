rows = $<.map(&:chomp).map(&:chars)
signs = rows[-1].select{|x| x!=" "}.map{|x| x=="*"? :* : :+}
rows = rows[0...-1].transpose.map{|x| (x*"").strip}.map{|x| x==""?nil:x.to_i}
out = [[]]
rows.each{|x|
	if x==nil
		out << []
	else
		out[-1] << x
	end
}

p out.zip(signs).map{|n,s| n.reduce(s)}.sum
