p $<.map{|x| x.strip.split(/\s+/)}.transpose.map{|x| x[0...-1].map(&:to_i).reduce(x[-1] == '*' ? :* : :+)}.sum
